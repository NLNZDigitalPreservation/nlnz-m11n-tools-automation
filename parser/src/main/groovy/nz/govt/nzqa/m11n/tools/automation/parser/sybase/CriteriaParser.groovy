package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Criteria
import nz.govt.nzqa.m11n.tools.automation.parser.Parser

class CriteriaParser implements Parser {

    String getType(String sqlStatement){
        def result = (sqlStatement =~ /(?i)CONSTRAINT (\S+) (CHECK) \((.*)\)/)
        String type = (result? result[0][2] : '')

        return type
    }

    String getFieldName(String sqlStatement){
        String fieldName = ''
        return fieldName
    }

    String getOperation(String criteriaWord){
        List<String> operationList = Arrays.asList('is', 'in', '>','<', '>=', '<=', '=','between')
        String operation = (operationList.contains(criteriaWord.toLowerCase())? criteriaWord : '')

        return operation
    }

    String getValueType(String sqlStatement){
        String valueType = ''

        return valueType
    }

    List<Object> getValues(String sqlStatement){
        List<Object> values = new ArrayList<Object>()

        return values
    }

    boolean getIsComposite(String sqlStatement){
        boolean isComposite = false

        return isComposite
    }

    String getJoinOperator(String sqlStatement){
        String joinOperator = ''

        return joinOperator
    }

    LinkedList<Criteria> getJoinCriteria(String sqlStatement){
        LinkedList<Criteria> criteriaLinkedList = new LinkedList<Criteria>()
        return criteriaLinkedList
    }

    @Override
    Criteria parse(File file){
        Criteria criteria = new Criteria()
        return criteria
    }

    @Override
    Criteria parse(String checkConstraintString) {
        Criteria criteria = new Criteria()

        def result = (checkConstraintString =~ /(?i)CONSTRAINT (\S+) CHECK\(\)/)
        String criteriaString = result[0][3]
        List<String> criteriaWords = Arrays.asList(criteriaString.split(" "))
        for (String criteriaWord : criteriaWords){
            criteria = new Criteria()
            criteria.setType(getType(checkConstraintString))

            criteria.setFieldName(getFieldName(checkConstraintString))
            criteria.setOperation(getOperation(criteriaWord))
            criteria.setValueType(getValueType(checkConstraintString))
            criteria.setValues(getValues(checkConstraintString))
            criteria.setComposite(getIsComposite(checkConstraintString))
            criteria.setJoinOperator(getJoinOperator(checkConstraintString))
            criteria.setJoinCriteria(getJoinCriteria(checkConstraintString))
        }

        return criteria
    }
}
