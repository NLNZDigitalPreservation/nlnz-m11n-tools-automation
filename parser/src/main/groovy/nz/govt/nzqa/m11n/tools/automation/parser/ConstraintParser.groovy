package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria

class ConstraintParser implements Parser {

    String getType(String sqlStatement){

        String type = 'Field'

        def result = (sqlStatement =~ /(?i)CONSTRAINT (\S+) (FOREIGN KEY|PRIMARY KEY|UNIQUE|CHECK)/)
        if (result){
            switch(result[0][2]){
                case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getSybaseKey()):
                    type = DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()
                    break

                case(DBObjMapper.CONSTRAINT_PRIMARYKEY.getSybaseKey()):
                    type = DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey()
                    break

                case(DBObjMapper.CONSTRAINT_UNIQUE.getSybaseKey()):
                    type = DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()
                    break

                case(DBObjMapper.CONSTRAINT_CHECK.getSybaseKey()):
                    type = DBObjMapper.CONSTRAINT_CHECK.getObjKey()
                    break
            }
        }

        return type
    }

    String getName(String sqlStatement){
        def result = (sqlStatement =~ /(?i)CONSTRAINT (\S+)/)
        String name = (result? result[0][1] : '')

        return name
    }

    String getSubType(String sqlStatement){
        def result = (sqlStatement =~ /(?i)CONSTRAINT (\S+) (.*) (CLUSTERED|NONCLUSTERED)/)
        String subType = (result? result[0][3] : '')

        return subType
    }

    String getAction(String sqlStatement){
        def createResult = (sqlStatement =~ /(?i)(CREATE) TABLE/)
        def result = (sqlStatement =~ /(?i)(ADD|DROP|DROPONLY) CONSTRAINT/)
        String action = (createResult? createResult[0][1]: (result? result[0][1] : ''))

        return action
    }

    List<String> getFields(String sqlStatement){
        def result = (sqlStatement =~ /(?i)CONSTRAINT (\S+) (PRIMARY KEY|UNIQUE) (CLUSTERED|NONCLUSTERED) \((.*)\)/)
        def fkResult = (sqlStatement =~ /(?i)CONSTRAINT (\S+) FOREIGN KEY \((.*)\) REFERENCES/)
        List<String> fields = Arrays.asList(result? result[0][4].toString().split(",") :
                (fkResult? fkResult[0][2].toString().split(",") : ''))

        return fields
    }

    String getTableName(String sqlStatement){
        def result = (sqlStatement =~ /(?i)TABLE (\S+)/)
        String[] dbTable = (result? result[0][1].toString().split("\\.") : [])
        String tableName = (dbTable.size() == 2? dbTable[1] : '')

        return tableName
    }

    String getReferenceTableName(String sqlStatement){
        def result = (sqlStatement =~ /(?i)REFERENCES (\S+)/)
        String[] dbTable =  (result? result[0][1].toString().split("\\.") : [])
        String referenceTableName = (dbTable.size() == 2? dbTable[1] : '')

        return referenceTableName
    }

    List<String> getReferenceFields(String sqlStatement){
        def result = (sqlStatement =~ /(?i)REFERENCES (\S+) \((.*)\)/)
        List<String> referenceFields = Arrays.asList(result? result[0][2].toString().split(",") : [])

        return referenceFields
    }

    Criteria getCriteria(String constraintString){
        Criteria criteria = null

        if (constraintString =~ /(?i)CONSTRAINT (\S+) CHECK/){
            CriteriaParser criteriaParser = new CriteriaParser()
            criteria = criteriaParser.parse(constraintString)
        }

        return criteria
    }

    @Override

    Constraint parse(String sqlStatement) {

        Constraint constraint = new Constraint()
        constraint.setType(getType(sqlStatement))
        constraint.setName(getName(sqlStatement))
        constraint.setSubType(getSubType(sqlStatement))
        constraint.setAction(getAction(sqlStatement))
        constraint.setFields(getFields(sqlStatement))
        constraint.setTableName(getTableName(sqlStatement))
        constraint.setReferenceTableName(getReferenceTableName(sqlStatement))
        constraint.setReferenceFields(getReferenceFields(sqlStatement))
        constraint.setCriteria(getCriteria(sqlStatement))
        return constraint
    }

    @Override
    Constraint parse(File file) {
        Constraint constraint = new Constraint()
        return constraint
    }
}
