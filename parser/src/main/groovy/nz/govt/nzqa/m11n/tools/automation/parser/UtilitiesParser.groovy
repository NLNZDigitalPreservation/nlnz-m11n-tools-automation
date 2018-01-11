package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities

class UtilitiesParser {

    String getDatabaseName(String sql){
        String databaseName = ''

        return databaseName
    }

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

    Map<String, Param> getInFields(String sql){
        Map<String, Param> fieldMap = new HashMap<String, Param>()

        return fieldMap
    }

    String getReturnType(String sql){
        String returnType = ''

        return returnType
    }

    String getSql(String sqlLine){
        String sql = ''

        return sql
    }

    Map<Relation> getGrants(String sql){
        Map<Relation> grantsMap = new HashMap<Relation>()

        return grantsMap
    }

    Utilities parse(File file){
        Utilities utilities = new Utilities()

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
        return utilities
    }
}
