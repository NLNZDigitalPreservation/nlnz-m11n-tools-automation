package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class IndexParser implements Parser{
    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()

    String getDatabaseName(String sqlStatement){
        String regex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_DATABASE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String databaseName = (result? result[0][5].toString().split("\\.")[0] : '')

        return databaseName
    }

    String getType(String sqlStatement){
        String type = ''
        String regex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_TABLE_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        if(result){
            if (result[0][2].toString().contains(DBObjMapper.INDEX_NONCLUSTERED.getSybaseKey())){
                type = DBObjMapper.INDEX_NONCLUSTERED.getObjKey()
            }

            else if (result[0][2].toString().contains(DBObjMapper.INDEX_CLUSTERED.getSybaseKey())){
                type = DBObjMapper.INDEX_CLUSTERED.getObjKey()
            }
        }

        return type
    }

    String getName(String sqlStatement){
        String createRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_TABLE_NAME.getObjKey(), DBObjMapper.ACTION_CREATE.getObjKey())
        String dropRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_TABLE_NAME.getObjKey(), DBObjMapper.ACTION_DROP.getObjKey())
        def createResult = (sqlStatement =~ /$createRegex/)
        def dropResult = (sqlStatement =~ /$dropRegex/)

        String name = (createResult? createResult[0][3] : (dropResult? dropResult[0][2].toString().split("\\.")[1] : ''))

        return name
    }

    String getAction(String sqlStatement){
        String createRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_CREATE.getObjKey())
        String dropRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_ACTION.getObjKey(), DBObjMapper.ACTION_DROP.getObjKey())

        def createResult = (sqlStatement =~ /$createRegex/)
        def dropResult = (sqlStatement =~ /$dropRegex/)

        String action = (createResult? createResult[0][1].toString() : (dropResult? dropResult[0][1] : ''))

        return action
    }

    String getTableName(String sqlStatement){
        String tableName = ''
        String createRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_NAME.getObjKey(), DBObjMapper.ACTION_CREATE.getObjKey())
        String dropRegex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_NAME.getObjKey(), DBObjMapper.ACTION_DROP.getObjKey())

        def createResult = (sqlStatement =~ /$createRegex/)
        def dropResult = (sqlStatement =~ /$dropRegex/)

        if (createResult){
            String[] dbTable = createResult[0][5].toString().split("\\.")
            tableName = (dbTable.size() == 2? dbTable[1] : '')
        }

        else if (dropResult){
            String[] tableIndex = dropResult[0][2].toString().split("\\.")
            tableName = (tableIndex.size() == 2? tableIndex[0] : '')
        }

        return tableName
    }

    List<String> getFieldNames(String sqlStatement){
        String regex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_FIELD_NAME.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> fieldNames = Arrays.asList(result? result[0][6].toString().split(",") : '')

        return  fieldNames
    }

    String getWithClause(String sqlStatement){
        String regex = regexBuilder.buildIndexRegex(DBObjMapper.REGEX_WITH_CLAUSE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String withClause = (result? result[0][1] : "")
        return withClause
    }


    @Override
    Index parse(File file){
        Index index = new Index()
        List<String> sqlStatements = util.getStatementsFromFile(file)
        for(String sqlStatement : sqlStatements){
            index.setType(getType(sqlStatement))
            index.setName(getName(sqlStatement))
            index.setAction(getAction(sqlStatement))
            index.setDatabaseName(getDatabaseName(sqlStatement))
            index.setTableName(getTableName(sqlStatement))
            index.setFieldNames(getFieldNames(sqlStatement))
            index.setWithClause(getWithClause(sqlStatement))
        }

        return index
    }

    @Override
    Index parse(String sqlStatement) {
        Index index = new Index()

        index.setType(getType(sqlStatement))
        index.setName(getName(sqlStatement))
        index.setAction(getAction(sqlStatement))
        index.setDatabaseName(getDatabaseName(sqlStatement))
        index.setTableName(getTableName(sqlStatement))
        index.setFieldNames(getFieldNames(sqlStatement))
        index.setWithClause(getWithClause(sqlStatement))

        return index
    }
}
