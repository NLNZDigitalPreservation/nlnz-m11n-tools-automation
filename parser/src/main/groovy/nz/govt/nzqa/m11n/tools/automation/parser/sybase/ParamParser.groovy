package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.m11n.tools.automation.parser.Parser

class ParamParser implements Parser{

    String getName(String sql){
        String name = ''

        return name
    }

    String getDataType(String sql){
        String dataType = ''

        return dataType
    }

    String getDefaultValue(String sql){
        String defaultValue = ''

        return defaultValue
    }

    String getInOut(String sql){
        String inOut = ''

        return inOut
    }

    @Override
    Param parse(File file){
        Param param = new Param()
        return param
    }

    @Override
    Param parse(String sqlStatement) {
        return null
    }
}
