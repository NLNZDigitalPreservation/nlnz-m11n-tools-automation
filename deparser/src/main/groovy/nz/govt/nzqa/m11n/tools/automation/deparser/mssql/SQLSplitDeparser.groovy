package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.SQLSplit
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser

import javax.swing.text.html.parser.Entity

class SQLSplitDeparser implements Deparser{

    SQLSplit sqlSplit
    String outputStatement

    SQLSplitDeparser(SQLSplit sqlSplit1) {
        this.sqlSplit = sqlSplit1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){

        String sqlTemplate = sqlSplit.getSqlTemplate()

        if (sqlTemplate != null && sqlTemplate.trim().length()>0) {

            if (sqlSplit.getTempTables() != null && sqlSplit.getTempTables().size()>0) {
                EntityDeparser edp
                for (tempTableKey in sqlSplit.getTempTables().keySet()) {
                    edp = new EntityDeparser(sqlSplit.getTempTables().get(tempTableKey), null, false, false, false, false)
                    sqlTemplate = sqlTemplate.replaceFirst(tempTableKey, edp.deParse())
                }
            }

            if (sqlSplit.getJoinSelects() != null && sqlSplit.getJoinSelects().size()>0) {
                for (joinKey in sqlSplit.getJoinSelects().keySet()) {
                    String joinValue = sqlSplit.getJoinSelects().get(joinKey)
                    String sqlJoinString = joinValue

                    //Check for all left joins
                    while (sqlJoinString.indexOf("*=") > -1) {
                        sqlJoinString = QueryConverterUtil.sqlJoinReplacer(sqlJoinString, true)
                    }

                    //Check for all right joins
                    while (sqlJoinString.indexOf("=*") > -1) {
                        sqlJoinString = QueryConverterUtil.sqlJoinReplacer(sqlJoinString, false)
                    }

                    sqlTemplate = sqlTemplate.replaceFirst(joinKey, sqlJoinString)
                }
            }
        }

        outputStatement = sqlTemplate
    }

}
