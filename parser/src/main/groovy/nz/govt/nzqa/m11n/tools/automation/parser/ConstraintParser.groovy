package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria

class ConstraintParser implements Parser {

    String getType(String sql){
        String type = 'field'

        switch(sql){
            case (sql.equalsIgnoreCase("PRIMARY KEY")):
                type = 'PK'
                break
            case (sql.equalsIgnoreCase("FOREIGN KEY")):
                type = 'FK'
                break
            case (sql.equalsIgnoreCase("UNIQUE")):
                type = 'Unique'
                break
            case (sql.equalsIgnoreCase("CHECK")):
                type = 'Check'
                break
        }
        return type
    }

    String getName(String sql){
        String name = ''

        return name
    }

    String getSubType(String sql){
        String subType = ''

        return subType
    }

    String getAction(String sql){
        String action = ''

        return action
    }

    List<Object> getFields(String sql){
        List<Object> attributeMap = new ArrayList<Object>()

        return attributeMap
    }

    String getTableName(String sql){
        String tableName = ''

        return tableName
    }

    String getReferenceTableName(String sql){
        String referenceTableName = ''

        return referenceTableName
    }

    List<Object> getReferenceFields(String sql){
        List<Object> referenceFieldeMap = new HashMap<>()

        return referenceFieldeMap
    }

    Criteria getCheckCriteria(String sql){
        Criteria criteria = new Criteria()

        return criteria
    }

    @Override
    Constraint parse(String sql){
        Constraint constraint = new Constraint()

        def constraintResult = (sql =~ /(?i)CONSTRAINT (\w+) (.*) (CLUSTERED|NONCLUSTERED) \((\w+)\)/)

        if (constraintResult){
            constraint.setType(getType(constraintResult[0][2].toString()))
            constraint.setName(getName(constraintResult[0][1].toString()))
            constraint.setSubType(getSubType(constraintResult[0][3].toString()))
        }

        return constraint
    }

    @Override
    Constraint parse(File file) {
        Constraint constraint = new Constraint()

        file.eachLine { String line ->
            def constraintResult = (line =~ /(?i)CONSTRAINT (\w+) (.*) (CLUSTERED|NONCLUSTERED) \((\w+)\)/)

            if (constraintResult){
                constraint.setType(getType(constraintResult[0][2].toString()))
                constraint.setName(getName(constraintResult[0][1].toString()))
                constraint.setSubType(getSubType(constraintResult[0][3].toString()))
            }

        }

        return constraint
    }
}
