package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser

class ParamDeparser implements Deparser{

    Param param
    String outputStatement

    ParamDeparser(Param param1) {
        this.param = param1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        buff.append("$param.name $param.dataType ")

        if (param.getDefaultValue() != null && param.getDefaultValue().trim().length()>0) {
            buff.append(" = $param.defaultValue ")
        }

        switch (param.getInOut()) {
            case (DBObjMapper.PARAM_OUTPUT.getObjKey()) :
                buff.append(" " + DBObjMapper.PARAM_OUTPUT.getMssqlKey())
                break
        }

        outputStatement = buff.toString();
    }

}
