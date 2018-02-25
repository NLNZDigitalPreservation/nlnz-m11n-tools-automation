package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser

class AttributeDeparser implements Deparser{

    Attribute attribute
    String outputStatement

    AttributeDeparser(Attribute attribute1) {
        this.attribute = attribute1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        switch (attribute.getType()) {
            case(DBObjMapper.KEY_COLUMN.getObjKey()):
                // Do something
                switch (attribute.getAction()) {
                    case (DBObjMapper.ACTION_CREATE.getObjKey()):
                        buff.append(frameAttribute(DBObjMapper.ACTION_CREATE))
                        break
                    case (DBObjMapper.ACTION_ADD.getObjKey()):
                        buff.append(frameAttribute(DBObjMapper.ACTION_ADD))
                        break
                }
                break
        }

        outputStatement = buff.toString();
    }

    String frameAttribute(DBObjMapper.ObjMapper action) {
        StringBuffer buff = new StringBuffer("")
        buff.append("\n ")
        if (action.getObjKey() == DBObjMapper.ACTION_ADD.getObjKey()) {
            buff.append(DBObjMapper.ACTION_ADD.getMssqlKey() + " ")
        }
        buff.append("[$attribute.name] [" + DBObjMapper.SYBASE_MSSQL_DATATYPE_CONVERSION_MAP.getMssqlForSybaseType(attribute.getDataType()) + "]")
        if (attribute.length != null && attribute.length.trim().length() > 0) {
            if (attribute.fraction != null  && attribute.fraction.trim().length() > 0) {
                buff.append("($attribute.length, $attribute.fraction)")
            } else {
                buff.append("($attribute.length)")
            }
        }
        if (attribute.isIdentity()) {
            buff.append(" $DBObjMapper.CONSTRAINT_IDENTITY.mssqlKey(1, #IDENTITY_GAP#) $DBObjMapper.CONSTRAINT_NOT_NULL.mssqlKey")
        } else  {
            if (attribute.isNull()) {
                buff.append(" $DBObjMapper.CONSTRAINT_NULL.mssqlKey")
            } else {
                buff.append(" $DBObjMapper.CONSTRAINT_NOT_NULL.mssqlKey")
            }
        }
        return buff.toString()
    }
}
