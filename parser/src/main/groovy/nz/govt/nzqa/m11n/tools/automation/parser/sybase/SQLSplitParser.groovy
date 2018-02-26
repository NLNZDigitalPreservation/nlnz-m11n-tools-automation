package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.SQLSplit
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class SQLSplitParser implements Parser {
    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()
    String sqlTemplate

    Map<String, Entity> getTempTables(String sqlStatement){
        EntityParser entityParser = new EntityParser()
        Map<String, Entity> tempTablesMap = new HashMap<>()
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_TEMP_TABLES.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        String keyBase = "#TempTable-"
        String key

        for (int cntr=0; cntr<result.size(); cntr++) {
            key = keyBase + cntr + "#"
            String tempTable = result[cntr][0].toString()


            tempTable = tempTable.replaceAll(DBObjMapper.END_OF_LINE_MAPPER, "")
            //Handle case where unwanted comma is available before close of table creation...
            //Refer splitSPs-2303-p_stdver_in_catg_and_lvls-add.sql - create table #childCategories
            tempTable = tempTable.replaceFirst(",\\s\\)", " \\)")
            Entity entity = entityParser.parse(tempTable)
            tempTablesMap.put(key, entity)
            //replace in sqlTemplate
            sqlTemplate = sqlTemplate.replaceFirst(regex, key)
        }

        return tempTablesMap
    }

    Map<String, String> getJoinSelects(String sqlStatement){
        Map<String, String> joinSelectMap = new HashMap<>()
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_JOIN_QUERY_LEFT.getObjKey())
        def result = (sqlStatement =~ /$regex/)

        String keyBase = "#JoinSelect-"
        String key

        if (!result) {
            regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_JOIN_QUERY_LEFT_REST_ALL.getObjKey())
            result = (sqlStatement =~ /$regex/)
        }

        //Get all select queries with left join
        int cntr = 0
        for (int i=0; i<result.size(); i++){
            key = keyBase + cntr + "#"
            joinSelectMap.put(key, result[i][0])
            //replace in sqlTemplate
            sqlTemplate = sqlTemplate.replaceFirst(regex, key)
            cntr++
        }


        //Get all select queries with rest of right join
        //Note:- if there is any select with both left & right joins, it will handled in LEFT join case itself and DEPARSER will take care of handling both.
        regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_JOIN_QUERY_RIGHT.getObjKey())
        result = (sqlStatement =~ /$regex/)

        if (!result) {
            regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_JOIN_QUERY_RIGHT_REST_ALL.getObjKey())
            result = (sqlStatement =~ /$regex/)
        }

        for (int i=0; i<result.size(); i++){
            key = keyBase + cntr + "#"
            joinSelectMap.put(key, result[i][0])
            //replace in sqlTemplate
            sqlTemplate = sqlTemplate.replaceFirst(regex, key)
            cntr++
        }


        return joinSelectMap
    }

    String getIdentitySelects(String sqlStatement){
        Map<String, String> identitySelectMap = new HashMap<>()
        String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_IDENTITY_QUERY.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        List<String> identityQueryStrings = (result? result[0][3].toString().split(",").toList() :
                new ArrayList<String>())

        String keyBase = "#IdentitySelect-"
        int cntr = 0
        String key

        for (String identityQuery : identityQueryStrings){
            key = keyBase + cntr + "#"
            identitySelectMap.put(key, identityQuery)
            //replace in sqlTemplate
            sqlTemplate = sqlTemplate.replaceFirst(identityQuery, key)
            cntr++
        }
        return identitySelectMap
    }

    String trimComments(String sql) {
        String sqlUnCommented = sql
        //remove all single-line comments
        sqlUnCommented = sqlUnCommented.replaceAll("(?i)\\-\\-(.*?)#E-O-L-Key#", "")

        //remove all multi-line comments
        sqlUnCommented = sqlUnCommented.replaceAll("(?i)(?i)\\/\\*(.*?)\\*\\/", "")

        return sqlUnCommented
    }

    @Override
    SQLSplit parse(File file, String schema){
        //This method call is not expected.
        SQLSplit sQLSplit = new SQLSplit()
        return sQLSplit
    }

    @Override
    SQLSplit parse(String sqlStatement) {

        SQLSplit sQLSplit = null
        //if (util.fileIsInSameSchema(sqlStatements, schema)) {
            //String regex = regexBuilder.buildUtilitiesRegex(DBObjMapper.REGEX_IDENTIFY_SQL_SPLIT.getObjKey())

                //if (sqlStatement =~ /$regex/) {
                    sqlTemplate = sqlStatement

                    sQLSplit = new SQLSplit()
                    //Remove the commented lines..   which creates unncessary problem during attribute identification.
                    sqlStatement = trimComments(sqlStatement)

                    sQLSplit.setTempTables(getTempTables(sqlStatement))
                    sQLSplit.setJoinSelects(getJoinSelects(sqlStatement))
                    //sQLSplit.setIdentitySelects(getAction(sqlStatement))
                    sQLSplit.setSqlTemplate(sqlTemplate)
               // }
        //}

        return sQLSplit
    }
}
