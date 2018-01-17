package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute

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
                        buff.append("\n [$attribute.name] [$attribute.dataType] ")
                        if (attribute.length != null) {
                            if (attribute.fraction != null) {
                                buff.append(" ($attribute.length, $attribute.length) ")
                            } else {
                                buff.append(" ($attribute.length) ")
                            }
                        }
                        if (attribute.isNull()) {
                            buff.append(" NULL")
                        } else {
                            buff.append(" NOT NULL")
                        }
                        break
                }
                break
        }

        outputStatement = buff.toString();
    }
}
