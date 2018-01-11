package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria

class ConstraintParser {

    String getType(String sql){
        String type = ''

        return type
    }

    String getName(String sql){
        String name = ''

        return name
    }

    String getSubType(String sql){
        String subType = ''

        return subType
    }

    String getAction(String sql){
        String action = ''

        return action
    }

    List<Object> getFields(String sql){
        List<Object> attributeMap = new ArrayList<Object>()

        return attributeMap
    }

    String getTableName(String sql){
        String tableName = ''

        return tableName
    }

    String getReferenceTableName(String sql){
        String referenceTableName = ''

        return referenceTableName
    }

    List<Object> getReferenceFields(String sql){
        List<Object> referenceFieldeMap = new HashMap<>()

        return referenceFieldeMap
    }

    Criteria getCheckCriteria(String sql){
        Criteria criteria = new Criteria()

        return criteria
    }

    Constraint parse(File file){
        Constraint constraint = new Constraint()

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
        return constraint
    }
}
