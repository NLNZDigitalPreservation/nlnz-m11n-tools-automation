package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Relation

class RelationDeparser implements Deparser{

    Relation relation
    String outputStatement

    RelationDeparser(Relation relation1) {
        this.relation = relation1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")
        boolean firstValue = true

        switch (relation.getType()) {
            case(DBObjMapper.KEY_GRANT.getObjKey()):

                buff.append("\n ")
                buff.append(DBObjMapper.KEY_GRANT.getMssqlKey())
                buff.append(" $relation.action ")
                buff.append(" ON ")
                if (relation.getGrantObjectDB() != null) {
                    buff.append(" [$relation.grantObjectDB].")
                }
                buff.append("[$relation.grantObjectName] TO ")
                buff.append("[$relation.grantTo] ")
                //TODO AS [dbo]
                break
        }

        outputStatement = buff.toString();
    }

}
