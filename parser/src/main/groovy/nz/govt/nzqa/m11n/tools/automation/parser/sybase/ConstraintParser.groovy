package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class ConstraintParser implements Parser {

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()

    String getType(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        String type = ''
        def result = (sqlStatement =~ /$regex/)
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
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String name = (result? result[0][1] : '')

        return name
    }

    String getSubType(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_SUB_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String subType = (result? result[0][3] : '')

        return subType
    }

    String getAction(String sqlStatement){
        String createTableRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_CREATE.getObjKey())
        String addDropConstraintRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_ADD.getObjKey())

        def createResult = (sqlStatement =~ /$createTableRegex/)
        def result = (sqlStatement =~ /$addDropConstraintRegex/)
        String action = (createResult? createResult[0][1]: (result? result[0][1] : ''))

        return action
    }

    List<String> getFields(String sqlStatement){
        String pkUniqueRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_FIELDS.getObjKey(), DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey())
        String fkRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_FIELDS.getObjKey(), DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey())

        def result = (sqlStatement =~ /$pkUniqueRegex/)
        def fkResult = (sqlStatement =~ /$fkRegex/)
        List<String> fields = Arrays.asList(result? result[0][4].toString().split(",") :
                (fkResult? fkResult[0][2].toString().split(",") : ''))

        return fields
    }

    String getTableName(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_TABLE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String[] dbTable = (result? result[0][1].toString().split("\\.") : [])
        String tableName = (dbTable.size() == 2? dbTable[1] : '')

        return tableName
    }

    String getReferenceTableName(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_REFERENCE_TABLE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String[] dbTable =  (result? result[0][1].toString().split("\\.") : [])
        String referenceTableName = (dbTable.size() == 2? dbTable[1] : '')

        return referenceTableName
    }

    List<String> getReferenceFields(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_REFERENCE_FIELDS.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> referenceFields = Arrays.asList(result? result[0][2].toString().split(",") : [])

        return referenceFields
    }

    Criteria getCriteria(String constraintString){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_CRITERIA.getObjKey())
        Criteria criteria = null

        if (constraintString =~ /$regex/){
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
        List<String> sqlStatements = util.getStatementsFromFile(file)

        for(String sqlStatement : sqlStatements){
            constraint.setType(getType(sqlStatement))
            constraint.setName(getName(sqlStatement))
            constraint.setSubType(getSubType(sqlStatement))
            constraint.setAction(getAction(sqlStatement))
            constraint.setFields(getFields(sqlStatement))
            constraint.setTableName(getTableName(sqlStatement))
            constraint.setReferenceTableName(getReferenceTableName(sqlStatement))
            constraint.setReferenceFields(getReferenceFields(sqlStatement))
            constraint.setCriteria(getCriteria(sqlStatement))
        }
        return constraint
    }
}
