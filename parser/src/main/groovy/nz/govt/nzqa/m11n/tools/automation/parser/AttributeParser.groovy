package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Attribute

class AttributeParser {

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

    Attribute parse(File file){
        Attribute attribute = new Attribute()

        file.eachLine { String line ->
            if(line.trim()){

                String[] sqlElements = line.split(" ")
            }

        }

        for (String sqlElement : sqlElements){
            switch(sqlElement){
                case('create'):
                    // Do something
                break

            }

        }
        return attribute
    }
}
