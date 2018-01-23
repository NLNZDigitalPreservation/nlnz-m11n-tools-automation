package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import com.google.common.base.Predicates
import com.google.common.collect.Collections2
import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

import java.util.regex.Matcher
import java.util.regex.Pattern

/**
 * Assume all create table statements will not have alter table add foreign key constraints
 */

class EntityParser implements Parser{

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()

    String getDatabaseName(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String databaseName = (result? result[0][3].toString().split("\\.")[0] : '')
        return databaseName
    }

    String getType(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String type = (result? result[0][2].toString() : '')
        return type
    }

    String getName(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String name = (result ? result[0][3].toString().split("\\.")[1]: '')
        return name
    }

    String getAction(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String action = (result? result[0][1].toString() : '')
        return action
    }

    String getOperationType(String sqlStatement){
        String operationType = ""

        String createRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_OPERATION_TYPE.getObjKey(), DBObjMapper.ACTION_CREATE.getSybaseKey())
        String defaultRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_OPERATION_TYPE.getObjKey(), DBObjMapper.ENTITY_DEFAULT.getSybaseKey())

        if(sqlStatement =~ /$defaultRegex/){
            operationType = DBObjMapper.ENTITY_OPERATION_TYP_DEFAULT_VALUE.getObjKey()
        }

        else if (sqlStatement =~ /$createRegex/){
            if (sqlStatement.toLowerCase().contains("select ")){
                operationType = DBObjMapper.ENTITY_OPERATION_TYP_DERIVED.getObjKey()
            }

            else{
                operationType = DBObjMapper.ENTITY_OPERATION_TYP_DIRECT.getObjKey()
            }
        }

        return operationType
    }

    Map<String, Attribute> getFields(String sqlStatement){
        AttributeParser attributeParser = new AttributeParser()
        Map<String, Attribute> attributeMap = new HashMap<>()

        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_FIELDS.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> attributes = result? (result[0][4].toString().split(", ").toList()) : new ArrayList<String>()
        Collection<String> attributeStrings = Collections2.filter(attributes, Predicates.not(Predicates.containsPattern(DBObjMapper.KEY_CONSTRAINT.getSybaseKey())))

        for (String attributeString : attributeStrings){
            Attribute attribute = attributeParser.parse(attributeString)
            attribute.setType(attributeParser.getType(sqlStatement))
            attribute.setAction(attributeParser.getAction(sqlStatement))
            attributeMap.put(attribute.getName(), attribute)
        }

        return attributeMap
    }

    String getDataType(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> fields = Arrays.asList(result? result[0][1].toString().replaceAll("'", "").split(",") : '')
        String dataType = (fields.size() > 0? fields[1] : '')

        return dataType
    }

    String getQueryValue(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_QUERY_VALUE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String queryValue = (result? result[0][1].toString() : '')

        return queryValue
    }


    Map<String, Constraint> getConstraints(String sqlStatement){
        ConstraintParser constraintParser = new ConstraintParser()
        Map<String, Constraint> constraintMap = new HashMap<>()

        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_CONSRTAINTS.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> attributes = result? (result[0][4].toString().split(", ").toList()) : new ArrayList<String>()
        Collection<String> constraintStrings = Collections2.filter(attributes, Predicates.containsPattern(DBObjMapper.KEY_CONSTRAINT.getSybaseKey()))

        for (String constraintString : constraintStrings){
            Constraint constraint = constraintParser.parse(constraintString)
            constraint.setAction(constraintParser.getAction(sqlStatement))
            constraintMap.put(constraint.getName(), constraint)
        }

        return constraintMap
    }

    Map<String, Relation> getGrants(List<String> grantStatements){
        Map<String, Relation> relationMap = new HashMap<>()

        for (String grantStatement : grantStatements){
            RelationParser relationParser = new RelationParser()
            Relation relation = relationParser.parse(grantStatement)
            relationMap.put(relation.getName(), relation)
        }

        return relationMap
    }

    List<String> getLocks(String sqlStatement){
        List<String> locks = new ArrayList<String>()

        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_LOCKS.getObjKey())
        Pattern pattern = Pattern.compile(/$regex/)
        Matcher matcher = pattern.matcher(sqlStatement)

        while(matcher.find()){
            String lockName = matcher.group(1)
            locks.add(lockName)
        }
        return locks
    }

    @Override
    Entity parse(File file){
        Entity entity = new Entity()
        ParserUtil util = new ParserUtil()
        List<String> grantStatements = new ArrayList<>()
        List<String> statements = util.getStatementsFromFile(file)
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey())

        for(String statement : statements){
            if (statement =~ /$regex/) {
                entity.setDatabaseName(getDatabaseName(statement))
                entity.setType(getType(statement))
                entity.setName(getName(statement))
                entity.setAction(getAction(statement))
                entity.setOperationType(getOperationType(statement))
                entity.setFields(getFields(statement))
                entity.setDataType(getDataType(statement))
                entity.setQueryValue(getQueryValue(statement))
                entity.setConstraints(getConstraints(statement))
                entity.setLocks(getLocks(statement))
            }

            else if (statement.startsWith(DBObjMapper.KEY_GRANT.getSybaseKey())){
                grantStatements.add(statement)
            }
        }

        entity.setGrants(getGrants(grantStatements))

        return entity
    }

    @Override
    Entity parse(String sqlStatement) {
        Entity entity = new Entity()
        List<String> grantStatements = new ArrayList<>()
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey())

        if (sqlStatement =~ /$regex/) {
            entity.setDatabaseName(getDatabaseName(sqlStatement))
            entity.setType(getType(sqlStatement))
            entity.setName(getName(sqlStatement))
            entity.setAction(getAction(sqlStatement))
            entity.setFields(getFields(sqlStatement))
            entity.setConstraints(getConstraints(sqlStatement))
            entity.setLocks(getLocks(sqlStatement))
        }

        else if (sqlStatement.startsWith(DBObjMapper.KEY_GRANT.getSybaseKey())){
            grantStatements.add(sqlStatement)
        }

        entity.setGrants(getGrants(grantStatements))
        return entity
    }
}
