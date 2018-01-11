package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity

import javax.management.relation.Relation

class EntityParser{

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

    String getOperationType(String sql){
        String operationType = ''

        return operationType
    }

    Map<Attribute> getFields(String sql){
        Map<Attribute> attributeMap = new HashMap<>()

        return attributeMap
    }

    String getDataType(String sql){
        String dataType = ''

        return dataType
    }

    String getQueryValue(String sql){
        String queryValue = ''

        return queryValue
    }


    Map<Constraint> getConstraints(String sql){
        Map<Constraint> constraintMap = new HashMap<>()

        return constraintMap
    }

    Map<Relation> getGrants(String sql){
        Map<Relation> relationMap = new HashMap<>()

        return relationMap
    }

    List<String> getLocks(String sql){
        List<String> lockList = new ArrayList<String>()

        return lockList
    }

    Entity parse(File file){
        Entity entity = new Entity()

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
        return entity
    }
}
