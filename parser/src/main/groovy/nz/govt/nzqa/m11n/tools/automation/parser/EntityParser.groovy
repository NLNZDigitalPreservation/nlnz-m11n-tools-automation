package nz.govt.nzqa.m11n.tools.automation.parser

import com.google.common.base.Predicates
import com.google.common.collect.Collections2
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation

import java.util.regex.Matcher
import java.util.regex.Pattern
import java.util.stream.Collector
import java.util.stream.Collectors

class EntityParser implements Parser{

    String getDatabaseName(String sql){
        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+)/)
        String databaseName = (result? result[0][2].toString().split(".")[0] : '')
        return databaseName
    }

    String getType(String sql){
        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+)/)
        String type = (result? result[0][2].toString() : '')
        return type
    }

    String getName(String sql){
        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+)/)
        String name = (result ? result[0][2].toString().split(".")[1]: '')
        return name
    }

    String getAction(String sql){
        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY)/)
        String action = (result? result[0][1].toString() : '')
        return action
    }

    String getOperationType(String sql){
        String operationType = ''

        return operationType
    }

    Map<String, Attribute> getFields(String sql){
        Map<String, Attribute> attributeMap = new HashMap<>()

        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+) \((.*)\)/)
        List<String> attributes = result? (result[0][4].toString().split(", ").toList()) : new ArrayList<String>()
        Collection<String> attributeStrings = Collections2.filter(attributes, Predicates.not(Predicates.containsPattern("CONSTRAINT")))

        for (String attributeString : attributeStrings){
            AttributeParser attributeParser = new AttributeParser()
            Attribute attribute = attributeParser.parse(attributeString)

            attribute.setType(result[0][1].toString().equalsIgnoreCase('CREATE')? 'Column' : '')

                String[] attributeFields = attributeString.split(" ")
                attribute.setName(attributeFields[0])
                attribute.setAction(result[0][1].toString().equalsIgnoreCase('CREATE')? 'Create' : '')
                attribute.setDataType(attributeFields[1])
                attribute.setNull(!(attributeFields.size() >= 4 && attributeFields[2].equalsIgnoreCase("NOT")))
        }
        return attributeMap
    }

    String getDataType(String sql){
        String dataType = ''

        return dataType
    }

    String getQueryValue(String sql){
        String queryValue = ''

        return queryValue
    }


    Map<String, Constraint> getConstraints(String sql){
        Map<String, Constraint> constraintMap = new HashMap<>()
        def result = (sql =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+) \((.*)\)/)
        List<String> attributes = result? (result[0][4].toString().split(", ").toList()) : new ArrayList<String>()
        Collection<String> constraintStrings = Collections2.filter(attributes, Predicates.containsPattern("CONSTRAINT"))

        for (String constraintString : constraintStrings){
            ConstraintParser constraintParser = new ConstraintParser()
            Constraint constraint = constraintParser.parse(constraintString)
            constraintMap.put(constraint.getName(), constraint)
        }

        return constraintMap
    }

    Map<String, Relation> getGrants(List<String> sqls){
        Map<String, Relation> relationMap = new HashMap<>()

        for (String sql : sqls){
            def result = (sql =~ /(?i)GRANT (\S+) ON (\S+) TO (\S+)/)
            if(result){
                Relation relation = new Relation()
                relation.setType('Grant')
                relation.setAction(result[0][1])
                String[] objects = result[0][2].toString().split(".")
                relation.setGrantTo(result[0][3])
                relation.setGrantObjectDB(objects[0])
                relation.setGrantObjectName(objects[1])

                relationMap.put(objects[1], relation)
            }
        }

        return relationMap
    }

    List<String> getLocks(String sql){
        List<String> locks = new ArrayList<String>()

        Pattern pattern = Pattern.compile(/(?i)LOCK (\S+)/)
        Matcher matcher = pattern.matcher(sql)

        while(matcher.find()){
            String lockName = matcher.group(1)
            locks.add("[" + lockName + "]")
        }
        return locks
    }

    @Override
    Entity parse(File file){
        Entity entity = new Entity()
        ParserUtil util = new ParserUtil()
        List<String> grantStatements = new ArrayList<>()
        List<String> statements = util.getStatementsFromFile(file)

        for(String statement : statements){
            switch (statement){
                case(statement =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY)/):
                    entity.setDatabaseName(getDatabaseName(statement))
                    entity.setType(getType(statement))
                    entity.setName(getName(statement))
                    entity.setAction(getAction(statement))
                    entity.setFields(getFields(statement))
                    entity.setConstraints(getConstraints(statement))
                    entity.setLocks(getLocks(statement))
                    break

                case(statement.startsWith("GRANT")):
                    grantStatements.add(statement)
                    break
            }
        }
        entity.setGrants(getGrants(grantStatements))

        return entity
    }

    @Override
    Entity parse(String sqlStatement) {
        Entity entity = new Entity()
        List<String> grantStatements = new ArrayList<>()

        switch (sqlStatement){
            case(sqlStatement =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY)/):
                entity.setDatabaseName(getDatabaseName(sqlStatement))
                entity.setType(getType(sqlStatement))
                entity.setName(getName(sqlStatement))
                entity.setAction(getAction(sqlStatement))
                entity.setFields(getFields(sqlStatement))
                entity.setConstraints(getConstraints(sqlStatement))
                entity.setLocks(getLocks(sqlStatement))
                break

            case(sqlStatement.startsWith("GRANT")):
                grantStatements.add(sqlStatement)
                break
        }

        entity.setGrants(getGrants(grantStatements))
        return entity

    }
}
