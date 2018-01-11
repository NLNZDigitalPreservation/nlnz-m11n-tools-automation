package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Relation

class RelationParser {

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

    String getGrantTo(String sql){
        String grantTo = ''

        return grantTo
    }

    String getGrantObjectDb(String sql){
        String grantObjectDb = ''

        return grantObjectDb
    }

    String getGrantObjectName(String sql){
        String grantObjectName = ''

        return grantObjectName
    }

    String getGrantSubObjects(String sql){
        String grantSubObjects = ''

        return grantSubObjects
    }

    Relation parse(File file){
        Relation relation = new Relation()

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
        return relation
    }
}
