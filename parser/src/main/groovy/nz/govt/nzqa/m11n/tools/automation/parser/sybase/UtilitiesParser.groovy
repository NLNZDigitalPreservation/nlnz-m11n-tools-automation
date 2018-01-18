package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.parser.Parser

class UtilitiesParser implements Parser {

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

    Map<String, Relation> getGrants(String sql){
        Map<String, Relation> grantsMap = new HashMap<>()

        return grantsMap
    }

    @Override
    Utilities parse(File file){
        Utilities utilities = new Utilities()
        return utilities
    }

    @Override
    Utilities parse(String sqlStatement) {
        return null
    }
}
