package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Param

class ParamParser {

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

    Param parse(File file){
        Param param = new Param()

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
        return param
    }
}
