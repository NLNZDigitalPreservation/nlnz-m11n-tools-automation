package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Attribute

class AttributeParser implements Parser{

    String getType(String sql){
        String type = ''

        return type
    }

    String getName(String sql){
        String name = ''

        return name
    }

    String getAction(String sql){
        String action = ''

        return action
    }

    String getDataType(String sql){
        String dataType = ''

        return dataType
    }

    String getLength(String sql){
        String length = ''

        return length
    }

    String getFraction(String sql){
        String fraction = ''

        return fraction
    }

    String getDefaultValue(String sql){
        String defaultValue = ''

        return defaultValue
    }

    String getDefaultValueDataType(String sql){
        String defaultValueDataType = ''

        return defaultValueDataTypes
    }

    boolean getIsNull(String sql){
        boolean isNull = false

        return isNull
    }

    @Override
    Attribute parse(File file){
        Attribute attribute = new Attribute()
        return attribute
    }

    @Override
    Attribute parse(String sqlStatement) {
        return null
    }
}
