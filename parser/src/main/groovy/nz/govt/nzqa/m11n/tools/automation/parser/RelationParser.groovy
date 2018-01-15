package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Relation

class RelationParser implements Parser{

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

    @Override
    Relation parse(File file){
        Relation relation = new Relation()
        return relation
    }

    @Override
    Relation parse(String sqlStatement) {
        return null
    }
}
