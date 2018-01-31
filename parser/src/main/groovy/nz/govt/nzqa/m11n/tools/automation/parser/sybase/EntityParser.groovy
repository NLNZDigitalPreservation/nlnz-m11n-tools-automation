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
    ParserUtil util = new ParserUtil()

    String getDatabaseName(String sqlStatement){
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey())
        String alterRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey(), DBObjMapper.ACTION_ALTER.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        def alterResult = (sqlStatement =~ /$alterRegex/)
        String databaseName = (alterResult? alterResult[0][2].toString().split("\\.")[0]
                : result? result[0][3].toString().split("\\.")[0] : '')
        return databaseName
    }

    String getType(String sqlStatement){
        String typeString = ''
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_TYPE.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())
        String alterRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey(), DBObjMapper.ACTION_ALTER.getObjKey())
        def alterResult = (sqlStatement =~ /$alterRegex/)
        def result = (sqlStatement =~ /$regex/)
        def dataTypeResult = (sqlStatement =~ /$dataTypeRegex/)

        if (alterResult){
            typeString = DBObjMapper.ENTITY_KEY.getObjKey()
        }

        else if (result){
            typeString = result[0][2]
        }

        else if (dataTypeResult){
            typeString = dataTypeResult[0][1]

        }
        String type = util.getTypeObjKeyFromRawString(typeString)
        return type
    }

    String getName(String sqlStatement){
        String name = ''
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())
        String alterRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey(),
                DBObjMapper.ACTION_ALTER.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        def dataTypeResult = (sqlStatement =~ /$dataTypeRegex/)
        def alterResult = (sqlStatement =~ /$alterRegex/)

        if (alterResult){
            String[] dbName = alterResult[0][2].toString().split("\\.")
            name = (dbName.size() == 2? dbName[1]: '')
        }

        else if (result){
            String[] dbName = result[0][3].toString().split("\\.")
            name = (dbName.size() == 2? dbName[1]: '')
        }

        else if (dataTypeResult){
            String dropTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey(), DBObjMapper.ACTION_DROP_DATATYPE.getObjKey())
            def dropTypeResult = (dataTypeResult[0][0].toString() =~ /$dropTypeRegex/)
            String dropName = (dropTypeResult? dropTypeResult[0][2].toString().trim() : '')
            String[] addNameTypeValue = dataTypeResult[0][2].toString().trim().split(",")
            name = (!dropName.isEmpty()? dropName.replaceAll("'", "") :
                    addNameTypeValue.size() > 0? addNameTypeValue[0].replaceAll("'", "") : '')
        }
        return name
    }

    String getAction(String sqlStatement){
        String actionString = ''
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())
        String alterRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_NAME.getObjKey(),
                DBObjMapper.ACTION_ALTER.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        def dataTypeResult = (sqlStatement =~ /$dataTypeRegex/)
        def alterResult = (sqlStatement =~ /$alterRegex/)

        if (alterResult){
            actionString = DBObjMapper.ACTION_ALTER.getObjKey()
        }

        else if (result) {
            actionString = result[0][1]
        }

        else if (dataTypeResult){
            actionString = dataTypeResult[0][1]
        }
        String action = util.getActionObjKeyFromRawString(actionString)
        return action
    }

    String getOperationType(String sqlStatement){
        String operationType = ''
        String createRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_OPERATION_TYPE.getObjKey(), DBObjMapper.ACTION_CREATE.getSybaseKey())
        String defaultRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_OPERATION_TYPE.getObjKey(), DBObjMapper.ENTITY_DEFAULT.getSybaseKey())
        def createResult = (sqlStatement =~ /$createRegex/)
        def defaultResult = (sqlStatement =~ /$defaultRegex/)

        if(defaultResult){
            operationType = DBObjMapper.OPERATION_DEFAULT.getObjKey()
        }

        else if (createResult){
            if (sqlStatement.toUpperCase().contains(DBObjMapper.ACTION_SELECT.getSybaseKey() + " ")){
                operationType = DBObjMapper.OPERATION_DERIEVED.getObjKey()
            }

            else{
                operationType = DBObjMapper.OPERATION_DIRECT.getObjKey()
            }
        }
        return operationType
    }

    Map<String, Attribute> getFields(String sqlStatement){
        AttributeParser attributeParser = new AttributeParser()
        Map<String, Attribute> attributeMap = new HashMap<>()
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_FIELDS.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        if (result){
            List<String> attributes = result[0][4].toString().split(", ")
            Collection<String> attributeStrings = Collections2.filter(attributes, Predicates.not(Predicates.containsPattern(DBObjMapper.KEY_CONSTRAINT.getSybaseKey())))

            for (String attributeString : attributeStrings){
                Attribute attribute = attributeParser.parse(attributeString)
                attribute.setType(attributeParser.getType(sqlStatement))
                attribute.setAction(attributeParser.getAction(sqlStatement))
                attributeMap.put(attribute.getName(), attribute)
            }
        }
        return attributeMap
    }

    String getDataType(String sqlStatement){
        String dataType = ''
        String defaultRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey(),
                DBObjMapper.ENTITY_DEFAULT.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())
        def defaultResult = (sqlStatement =~ /$defaultRegex/)
        def dataTypeResult = (sqlStatement =~ /$dataTypeRegex/)

        if (defaultResult){
            dataType = (defaultResult[0][2].toString().contains("'")? DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()
                    : DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        }

        else if (dataTypeResult){
            String[] nameTypeValue = dataTypeResult[0][2].toString().trim().replaceAll("'", "").split(",")
            dataType = (nameTypeValue.size() == 3? nameTypeValue[1] : '')
        }
        return dataType
    }

    String getQueryValue(String sqlStatement){
        String queryValue = ''
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_QUERY_VALUE.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        def dataTypeResult = (sqlStatement =~ /$dataTypeRegex/)

        if (result) {
            queryValue = result[0][1].toString()
        }

        else if (dataTypeResult){
            String[] nameTypeValue = dataTypeResult[0][2].toString().trim().replaceAll("'", "").split(",")
            queryValue = (nameTypeValue.size() == 3? nameTypeValue[2] : '')
        }
        return queryValue
    }


    Map<String, Constraint> getConstraints(String sqlStatement){
        ConstraintParser constraintParser = new ConstraintParser()
        Map<String, Constraint> constraintMap = new HashMap<>()
        List<String> constraintStrings = new ArrayList<>()
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_CONSRTAINTS.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        if (result) {
            List<String> attributes = result[0][4].toString().split(", ").toList()
            constraintStrings = (attributes.size() > 0 ? Collections2.filter
            (attributes, Predicates.containsPattern(DBObjMapper.KEY_CONSTRAINT.getSybaseKey())).asList() : new ArrayList<>())
        }

        else {
            // Pass the whole SQL statement to constraint parser
            constraintStrings.add(sqlStatement)
        }

        for (String constraintString : constraintStrings){
            Constraint constraint = constraintParser.parse(constraintString)
            constraint.setAction(constraintParser.getAction(sqlStatement))
            constraint.setTableName(constraintParser.getTableName(sqlStatement))
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
        List<String> grantStatements = new ArrayList<>()
        List<String> sqlStatements = util.getStatementsFromFile(file)
        String regex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey())
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())

        for(String sqlStatement : sqlStatements){
            if ((sqlStatement =~ /$regex/) || (sqlStatement =~ /$dataTypeRegex/)) {
                entity.setDatabaseName(getDatabaseName(sqlStatement))
                entity.setType(getType(sqlStatement))
                entity.setName(getName(sqlStatement))
                entity.setAction(getAction(sqlStatement))
                entity.setOperationType(getOperationType(sqlStatement))
                entity.setFields(getFields(sqlStatement))
                entity.setDataType(getDataType(sqlStatement))
                entity.setQueryValue(getQueryValue(sqlStatement))
                entity.setConstraints(getConstraints(sqlStatement))
                entity.setLocks(getLocks(sqlStatement))
            }

            else if (sqlStatement.startsWith(DBObjMapper.KEY_GRANT.getSybaseKey())){
                grantStatements.add(sqlStatement)
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
        String dataTypeRegex = regexBuilder.buildEntityRegex(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey(),
                DBObjMapper.ENTITY_DATATYPE.getObjKey())

        if ((sqlStatement =~ /$regex/) || (sqlStatement =~ /$dataTypeRegex/)) {
            entity.setDatabaseName(getDatabaseName(sqlStatement))
            entity.setType(getType(sqlStatement))
            entity.setName(getName(sqlStatement))
            entity.setAction(getAction(sqlStatement))
            entity.setOperationType(getOperationType(sqlStatement))
            entity.setFields(getFields(sqlStatement))
            entity.setDataType(getDataType(sqlStatement))
            entity.setQueryValue(getQueryValue(sqlStatement))
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
