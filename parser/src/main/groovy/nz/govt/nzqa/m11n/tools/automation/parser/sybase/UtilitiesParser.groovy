package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class UtilitiesParser implements Parser {

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()

    String getDatabaseName(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String[] dbName = (result? result[0][3].toString().split("\\.") : [])
        String databaseName = (dbName.size() == 2? dbName[0] : '')

        return databaseName
    }

    String getType(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String type = (result? result[0][2].toString() : '')

        return type
    }

    String getName(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String[] dbName = (result? result[0][3].toString().split("\\.") : [])
        String name = (dbName.size() == 2? dbName[1] : result[0][3])

        return name
    }

    String getAction(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_ACTION.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String action = (result? result[0][1].toString() : '')

        return action
    }

    Map<String, Param> getInFields(String sqlStatement){
        ParamParser paramParser = new ParamParser()
        Map<String, Param> paramMap = new HashMap<>()

        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_IN_FIELDS.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> paramStrings = (result? result[0][2].toString().split(",").toList() :
                new ArrayList<String>())

        for (String paramString : paramStrings){
            Param param = paramParser.parse(paramString)
            paramMap.put(param.getName(), param)
        }

        return paramMap
    }

    String getReturnType(String sqlStatement){
        String returnType = ''

        return returnType
    }

    String getSql(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_SQL.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String sql = (result? result[0][1].toString() : "")

        return sql
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

    String getTriggerTableName (String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_TRIGGER_TABLE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String triggerTableName = (result? result[0][2].toString() : "")
        return triggerTableName
    }

    List<String> getTriggerOperations(String sqlStatement){
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_TRIGGER_OPERATIONS.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> triggerOperations = (result? Arrays.asList(result[0][3].toString()
                .replaceAll("\\s", "").split(",")) : new ArrayList<String>())
        return triggerOperations
    }

    @Override
    Utilities parse(File file){
        Utilities utilities = new Utilities()
        List<String> grantStatements = new ArrayList<>()
        List<String> sqlStatements = util.getStatementsFromFile(file)
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_ACTION_UTILITIES.getObjKey())

        for(String sqlStatement : sqlStatements) {
            if (sqlStatement =~ /$regex/) {
                utilities.setDatabaseName(getDatabaseName(sqlStatement))
                utilities.setType(getType(sqlStatement))
                utilities.setName(getName(sqlStatement))
                utilities.setAction(getAction(sqlStatement))
                utilities.setInFields(getInFields(sqlStatement))
                utilities.setReturnType(getReturnType(sqlStatement))
                utilities.setSql(getSql(sqlStatement))
                utilities.setTriggerTableName(getTriggerTableName(sqlStatement))
                utilities.setTriggerOperations(getTriggerOperations(sqlStatement))
            }

            else if (sqlStatement.startsWith(DBObjMapper.KEY_GRANT.getSybaseKey())){
                grantStatements.add(sqlStatement)
            }
        }

        utilities.setGrants(getGrants(grantStatements))

        return utilities
    }

    @Override
    Utilities parse(String sqlStatement) {

        Utilities utilities = new Utilities()
        List<String> grantStatements = new ArrayList<>()
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_ACTION_UTILITIES.getObjKey())

        if (sqlStatement =~ /$regex/) {
            utilities.setDatabaseName(getDatabaseName(sqlStatement))
            utilities.setType(getType(sqlStatement))
            utilities.setName(getName(sqlStatement))
            utilities.setAction(getAction(sqlStatement))
            utilities.setInFields(getInFields(sqlStatement))
            utilities.setReturnType(getReturnType(sqlStatement))
            utilities.setSql(getSql(sqlStatement))
            utilities.setTriggerTableName(getTriggerTableName(sqlStatement))
            utilities.setTriggerOperations(getTriggerOperations(sqlStatement))
        }

        else if (sqlStatement.startsWith(DBObjMapper.KEY_GRANT.getSybaseKey())){
            grantStatements.add(sqlStatement)
        }

        utilities.setGrants(getGrants(grantStatements))

        return utilities
    }
}
