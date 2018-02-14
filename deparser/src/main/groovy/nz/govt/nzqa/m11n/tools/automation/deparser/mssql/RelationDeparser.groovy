package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser

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

                switch (relation.getAction()) {
                    case (DBObjMapper.ACTION_CONNECT.getObjKey()):
                        buff.append("\n")
                        buff.append(DBObjMapper.KEY_GRANT.getMssqlKey())
                        buff.append(" $relation.action TO ")
                        buff.append("[$relation.grantTo] ")
                        if (relation.getGrantObjectDB() != null) {
                            buff.append("AS [$relation.grantObjectDB]")
                        }
                        break
                    default:
                        buff.append("\n")
                        buff.append(DBObjMapper.KEY_GRANT.getMssqlKey())
                        buff.append(" $relation.action ")
                        buff.append("ON ")
                        if (relation.isTypeReference()) {
                            buff.append("TYPE::")
                        }
                        if (relation.getGrantObjectDB() != null) {
                            buff.append("[$relation.grantObjectDB].")
                        }
                        buff.append("[$relation.grantObjectName]")
                        if (relation.getGrantSubObjects() != null && relation.getGrantSubObjects().size()>0) {
                            boolean firstCall = true
                            buff.append("(")
                            for (subObj in relation.getGrantSubObjects()){
                                if (!firstCall) {
                                    buff.append(", [$subObj]")
                                } else {
                                    firstCall = false
                                    buff.append("[$subObj]")
                                }
                            }
                            buff.append(")")
                        }
                        buff.append(" TO ")
                        buff.append("[$relation.grantTo] ")
                        if (relation.getGrantObjectDB() != null) {
                            buff.append("AS [$relation.grantObjectDB]")
                        }
                        break
                }

                break
        }

        outputStatement = buff.toString();
    }

}
