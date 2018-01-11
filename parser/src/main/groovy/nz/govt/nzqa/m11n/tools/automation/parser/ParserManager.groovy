package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper

class ParserManager {

    //TODO this should return the data model containing all info after parsing a small file
    List<String> parseFile(String sqlFileName){
        List<Object> result = new ArrayList<>()

        new File(sqlFileName).eachLine { String line ->

            if (line.trim()) {
                String[] sqlElementList = line.split(" ")

                for (String sqlElement : sqlElementList) {
                    switch (sqlElement) {


                    }

                }
            }
        }
        return result
    }


    //TODO return data model given a list of fields
    MigrateWrapper getMigrateWrapper(List<Object> fieldList){

    }
}
