package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper

class QueryConverterUtil {

    /*  leftJoin - true for *=
     *  leftJoin - false for =*
     */
    public static String sqlJoinReplacer(String sql, boolean leftJoin) {
        String sql2Output = sql
        String joinLHS
        String joinRHS
        String lhsTablePrefix
        String rhsTablePrefix
        String joinOperator = leftJoin? "*=" : "=*"
        //ending with \s* instead of \s+, as there were cases where no space / special char on the last of line
        //Also starting with \s* instead of \s+, as there were cases where the condition is enclosed withinn () parantheris. eg: proc_examPostMarkersReport
        String leftJoinRegex = "\\s*\\w+\\.\\w+\\s+\\*\\=\\s+\\w+\\.\\w+\\s*"
        String rightJoinRegex = "\\s*\\w+\\.\\w+\\s+\\=\\*\\s+\\w+\\.\\w+\\s*"

        String leftJoinWithLogicalOperatorRegex = "(?i)(AND|OR)\\s*\\w+\\.\\w+\\s+\\*\\=\\s+\\w+\\.\\w+\\s*"
        String rightJoinWithLogicalOperatorRegex = "(?i)(AND|OR)\\s*\\w+\\.\\w+\\s+\\=\\*\\s+\\w+\\.\\w+\\s*"

        //String tableNamesRegex = "(?i)\\bfrom\\b\\s(.*?)\\s\\bwhere\\b\\s"
        String tableNamesRegex = "(?i)\\bfrom\\b\\s(.*?)\\s\\bwhere\\b"
        //identify the table names used (values between FROM & WHERE
        def result = (sql =~ /$tableNamesRegex/)
        //Need tablenames along with the key words, From & Where, so take result[0][0] instead of result[0][1]
        String tableNamesStringBkpForReplacement = ""
        if (result) {
            tableNamesStringBkpForReplacement = (result.size()>1) ? result[result.size().intValue()-1][0].toString() : result[0][0].toString()
        }
        String tableNamesString = tableNamesStringBkpForReplacement
        List<String> tableNames = (tableNamesString.length()>0 ? tableNamesString.split(",").toList() :
                new ArrayList<String>())


        if (sql != null && sql.trim().length()>0) {
            if (leftJoin) {
                result = (sql =~ /$leftJoinRegex/)
            } else  {
                result = (sql =~ /$rightJoinRegex/)
            }

            for (int i=0; i<result.size(); i++){
                String joinCondition = result[i].toString()
                joinLHS = joinCondition.substring(0, joinCondition.indexOf(joinOperator)).trim()
                joinRHS = joinCondition.substring(joinCondition.indexOf(joinOperator)+2).trim()

                lhsTablePrefix = joinLHS.split("\\.")[0]
                rhsTablePrefix = joinRHS.split("\\.")[0]

                if (leftJoin) {

                    //List<String> tableNamesNu = new ArrayList<String>()
                    for (tableName in tableNames) {
                        //For LEFT Join, join table name appears on right hand side
                        if (tableName.contains(" " + rhsTablePrefix)) {
                            //replace this one with LEFT Join
                            //Here we are not expecting to replace the first table (which has FROM key word), so ignoring this case.  //TODO handle this case if any issue while testing
                            String tableNameWithJoin = "LEFT JOIN " + tableName
                            if (tableNameWithJoin.toLowerCase().contains("where")) {
                                tableNameWithJoin = tableNameWithJoin.replaceFirst("(?i)\\s\\bwhere\\b", "")
                                tableNameWithJoin = tableNameWithJoin + " ON " + joinCondition.replaceFirst("\\*\\=", "=")  + " WHERE " + DBObjMapper.END_OF_LINE_MAPPER
                            } else {
                                tableNameWithJoin = tableNameWithJoin + " ON " + joinCondition.replaceFirst("\\*\\=", "=")
                            }
                            tableNamesString = tableNamesString.replaceFirst(tableName, tableNameWithJoin)
                            //tableNamesNu.add(tableNameWithJoin)
                        }
                        //else {
                        //    tableNamesNu.add(tableName)
                        //}
                    }

                    sql2Output = sql2Output.replaceFirst(leftJoinWithLogicalOperatorRegex, "")
                    //Below statement will replace if the expression comes without logical operator (i.e., immediately followed by where)
                    sql2Output = sql2Output.replaceFirst(leftJoinRegex, "")

                } else {

                    for (tableName in tableNames) {
                        //For RIGHT Join, join table name appears on left hand side
                        if (tableName.contains(" " + lhsTablePrefix)) {
                            //replace this one with RIGHT Join
                            //Here we are not expecting to replace the first table (which has FROM key word), so ignoring this case.  //TODO handle this case if any issue while testing
                            String tableNameWithJoin = "RIGHT JOIN " + tableName
                            if (tableNameWithJoin.toLowerCase().contains("where")) {
                                tableNameWithJoin = tableNameWithJoin.replaceFirst("(?i)\\s\\bwhere\\b", "")
                                tableNameWithJoin = tableNameWithJoin + " ON " + joinCondition.replaceFirst("\\=\\*", "=")  + " WHERE " + DBObjMapper.END_OF_LINE_MAPPER
                            } else {
                                tableNameWithJoin = tableNameWithJoin + " ON " + joinCondition.replaceFirst("\\=\\*", "=")
                            }
                            tableNamesString = tableNamesString.replaceFirst(tableName, tableNameWithJoin)
                        }
                    }

                    sql2Output = sql2Output.replaceFirst(rightJoinWithLogicalOperatorRegex, "")
                    //Below statement will replace if the expression comes without logical operator (i.e., immediately followed by where)
                    sql2Output = sql2Output.replaceFirst(rightJoinRegex, "")

                }

            }

            sql2Output = sql2Output.replaceFirst(tableNamesRegex, tableNamesString)
            //sql2Output = sql2Output.replace(tableNamesStringBkpForReplacement, tableNamesString)
//            sql2Output.eachMatch(tableNamesRegex) { String match ->
//                if (match.equals(tableNamesStringBkpForReplacement)) {
//                    return tableNamesString
//                }
//            }

            String whereClauseRegex = "(?i)WHERE\\s(.*?)s+(.+?)\\s+\\=\\*\\s+(.+?)\\s+(ORDER BY|GROUP BY)\\s"
            String whereClauseRestRegex = "(?i)SELECT(?!.*SELECT)\\s(.*?)FROM\\s(.*?)WHERE\\s(.*?)s+(.+?)\\s+\\=\\*\\s+(.+)"
            //TODO remove the where keyword if no where clause after join replacement..

        }

        return sql2Output
    }

}
