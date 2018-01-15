package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.model.Criteria

class CriteriaParser implements Parser {

    String getType(String sql){
        String type = ''

        return type
    }

    String getFieldName(String sql){
        String fieldName = ''

        return fieldName
    }

    String getOperation(String sql){
        String operation = ''

        return operaiton
    }

    String getValueType(String sql){
        String valueType = ''

        return valueType
    }

    List<Object> getValues(String sql){
        List<Object> values = new ArrayList<Object>()

        return values
    }

    boolean getIsComposite(String sql){
        boolean isComposite = false

        return isComposite
    }

    String getJoinOperator(String sql){
        String joinOperator = ''

        return joinOperator
    }

    LinkedList<Criteria> getJoinCriteria(String sql){
        LinkedList<Criteria> criteriaLinkedList = new LinkedList<Criteria>()
        return criteriaLinkedList
    }

    @Override
    Criteria parse(File file){
        Criteria criteria = new Criteria()
        return criteria
    }

    @Override
    Criteria parse(String sqlStatement) {
        return null
    }
}
