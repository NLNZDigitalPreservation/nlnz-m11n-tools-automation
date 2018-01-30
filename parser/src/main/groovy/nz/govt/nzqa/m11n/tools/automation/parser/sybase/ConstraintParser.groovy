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
        String typeString = ''
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        if (result){
            typeString = result[0][2]
        }
        String type = util.getTypeObjKeyFromRawString(typeString)
        return type
    }

    String getName(String sqlStatement){
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String name = (result? result[0][1] : '')
        return name
    }

    String getSubType(String sqlStatement){
        String subTypeString = ''
        String regex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_SUB_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        if (result){
            subTypeString = result[0][3]
        }
        String subType = util.getTypeObjKeyFromRawString(subTypeString)
        return subType
    }

    String getAction(String sqlStatement){
        String actionString = ''
        String createTableRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_CREATE.getObjKey())
        String addDropConstraintRegex = regexBuilder.buildConstraintRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_ADD.getObjKey())
        def createResult = (sqlStatement =~ /$createTableRegex/)
        def addDropConstraintResult = (sqlStatement =~ /$addDropConstraintRegex/)

        if (createResult){
            actionString = createResult[0][1]
        }

        else if (addDropConstraintResult){
            actionString = addDropConstraintResult[0][1]
        }
        String action = util.getActionObjKeyFromRawString(actionString)
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
        def checkConstraintResult = constraintString =~ /$regex/

        if (checkConstraintResult){
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
