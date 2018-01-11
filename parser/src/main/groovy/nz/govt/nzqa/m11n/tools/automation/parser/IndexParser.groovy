package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Index

class IndexParser {

    String getDatabaseName(String sql){
        String database = ''

        return database
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

    String getTableName(String sql){
        String tableName = ''

        return tableName
    }

    List<String> getFieldNames(String sql){
        List<String> fieldNames = new ArrayList<String>()

        return  fieldNames
    }

    String getWithClause(String sql){
        String withClause = ''

        return withClause
    }


    Index parse(File file){
        Index index = new Index()

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
        return index
    }
}
