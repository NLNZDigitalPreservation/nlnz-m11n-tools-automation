package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Criteria
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

import java.util.regex.Matcher
import java.util.regex.Pattern

class CriteriaParser implements Parser {

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()

    String getType(String childCriteriaString){
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        String childRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_TYPE.getObjKey(), DBObjMapper.SPECIAL_OPERATOR_IN)
        def result = (childCriteriaString =~ regex)
        def childResult = (childCriteriaString =~ childRegex)
        boolean operatorIsIn = (childResult? childResult[0][2].toString().toLowerCase().equalsIgnoreCase(DBObjMapper.SPECIAL_OPERATOR_IN.toLowerCase()) : null)

        String type = (result && !operatorIsIn? DBObjMapper.TYPE_CHECK_WRAPPER.getObjKey() : DBObjMapper.TYPE_CHECK.getObjKey())

        return type
    }

    String getFieldName(String childCriteriaString){
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_FIELD_NAME.getObjKey())
        def result = (childCriteriaString =~ /$regex/)
        String fieldName = (result? result[0][1].toString() : '')
        return fieldName
    }

    String getOperation(String childCriteriaString){
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_OPERATION.getObjKey())
        def result = (childCriteriaString =~ /$regex/)
        String operation = (result? result[0][2].toString() : '')

        return operation
    }

    String getValueType(String childCriteriaString){
        String valueType = ''
        String intRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_VALUE_TYPE.getObjKey(), DBObjMapper.VALUETYPE_INT)
        String charRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_VALUE_TYPE.getObjKey(),DBObjMapper.VALUETYPE_CHAR )
        def intResult = (childCriteriaString =~ /$intRegex/)
        def charResult = (childCriteriaString =~ /$charRegex/)

        if (intResult){
            valueType = DBObjMapper.VALUETYPE_INT
        }

        else if (charResult){
            String value = charResult[0][3]
            String operator = charResult[0][2].toString().toLowerCase()
            if (value.contains('"') || value.contains("'")){
                valueType = DBObjMapper.VALUETYPE_CHAR
            }

            else if (!operator.equalsIgnoreCase(DBObjMapper.SPECIAL_OPERATOR_IS)) {
                valueType = DBObjMapper.VALUETYPE_FIELD
            }
        }

        return valueType
    }

    List<Object> getValues(String childCriteriaString){
        List<String> values = new ArrayList<>()
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_VALUES.getObjKey())
        def result = (childCriteriaString =~ /$regex/)
        if(result){
            String operator = result[0][2]

            switch (operator.toLowerCase()){
                case(DBObjMapper.SPECIAL_OPERATOR_BETWEEN.toLowerCase()):
                    String[] splitValuesUpperCaseAnd = result[0][3].toString().replaceAll("\\s", "")
                            .split(DBObjMapper.OPERATOR_AND)
                    String[] splitValuesLowerCaseAnd = result[0][3].toString().replaceAll("\\s", "")
                            .split(DBObjMapper.OPERATOR_AND.toLowerCase())
                    values = Arrays.asList((splitValuesUpperCaseAnd.size() == 2? splitValuesUpperCaseAnd :
                            splitValuesLowerCaseAnd.size() == 2? splitValuesLowerCaseAnd : ''))
                    break

                case(DBObjMapper.SPECIAL_OPERATOR_IN.toLowerCase()):
                    values = Arrays.asList(result[0][3].toString().replaceAll("[()]", "").split(","))
                    break

                default:
                    values = Arrays.asList(result[0][3].toString())
            }
        }
        return values
    }

    boolean getIsComposite(String sqlStatement, String childCriteriaString){
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_IS_COMPOSITE.getObjKey(), childCriteriaString)
        def result = (sqlStatement =~ regex)
        boolean isComposite = (result? true : false)

        return isComposite
    }

    String getJoinOperator(String sqlStatement, String childCriteriaString){
        String regex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_JOIN_OPERATOR.getObjKey(), childCriteriaString)
        def sqlResult = (sqlStatement =~ regex)
        def childStringResult = (childCriteriaString =~ regex)
        String joinOperator = (sqlResult? sqlResult[0][1] : childStringResult? childStringResult[0][1] : '')

        return joinOperator
    }

    LinkedList<Criteria> getJoinCriteriaForOutmostWrapper(String finalSqlStatement, Map<String, Criteria> wrapperMap){
        LinkedList<Criteria> criteriaLinkedList = new LinkedList<>()
        System.out.println("FinalsqlStatement: " + finalSqlStatement)
        String wrapperRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_JOIN_CRITERIA.getObjKey())
        Pattern wrapperPattern = Pattern.compile(/$wrapperRegex/)
        Matcher wrapperMatcher = wrapperPattern.matcher(finalSqlStatement)

       while(wrapperMatcher.find()){
           String index = wrapperMatcher.group()
           System.out.println("Criteria Index: " + index)
           Criteria criteriaWrapper = wrapperMap.get(index)
           criteriaLinkedList.add(criteriaWrapper)
       }

        return criteriaLinkedList
    }

    @Override
    Criteria parse(File file){
        Criteria criteria = new Criteria()
        return criteria
    }

    @Override
    Criteria parse(String sqlStatement) {
        Criteria criteriaWrapper = new Criteria()

        Map<String, Criteria> wrapperMap = new HashMap<>()

        String checkConstraintRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_ACTION_CRITERIA.getObjKey())
        String childCriteriaRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_ACTION_CRITERIA.getObjKey(),
                DBObjMapper.REGEX_CRITERIA.getObjKey())
        String finalSqlStatement = ''

        def result = (sqlStatement =~ /$checkConstraintRegex/)
        if (result) {
            String checkSqlStatement = result[0][1]
            String workingSqlStatement = checkSqlStatement

            int index = 0
            String wrapperStringKey = "[wrapper" + index + "]"


            while(!workingSqlStatement.equalsIgnoreCase(wrapperStringKey)){
                String wrapperString = util.getWrapperString(workingSqlStatement)
                wrapperStringKey = "[wrapper" + index + "]"
                criteriaWrapper = new Criteria()
                criteriaWrapper.setType(getType(result[0][0].toString()))
                LinkedList<Criteria> criteriaWrapperLinkedList = new LinkedList<>()

                Pattern childCriteriaPattern = Pattern.compile(/$childCriteriaRegex/)
                Matcher childCriteriaMatcher = childCriteriaPattern.matcher(wrapperString)

//                System.out.println("workingSqlStatement: " + workingSqlStatement)

                while (childCriteriaMatcher.find()) {
                    String childCriteriaString = childCriteriaMatcher.group().replaceAll(/(\))\1+/, "\\)")
                    Criteria childCriteria = getChildCriteria(checkSqlStatement, childCriteriaString)

                    if(criteriaWrapperLinkedList.size() > 0){
                        Criteria previousChildCriteria = criteriaWrapperLinkedList.getLast()
                        previousChildCriteria.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(childCriteria)))
                    }

                    criteriaWrapperLinkedList.add(childCriteria)
                }
                criteriaWrapper.setJoinCriteria(criteriaWrapperLinkedList)
                finalSqlStatement = workingSqlStatement
                workingSqlStatement = workingSqlStatement.replace(wrapperString, wrapperStringKey)
                criteriaWrapper.setJoinOperator(getJoinOperator(workingSqlStatement, wrapperStringKey))
                wrapperMap.put(wrapperStringKey, criteriaWrapper)
                index ++
            }
        }

        if (wrapperMap.size() > 1) {
            criteriaWrapper.setJoinCriteria(getJoinCriteriaForOutmostWrapper(finalSqlStatement, wrapperMap))
        }

        return criteriaWrapper
    }

    Criteria getChildCriteria(String sqlStatement, String childCriteriaString){
        Criteria childCriteria = new Criteria()
//        System.out.println("childCriteriaString: " + childCriteriaString)
        childCriteria.setType(getType(childCriteriaString))
        childCriteria.setFieldName(getFieldName(childCriteriaString))
        childCriteria.setOperation(getOperation(childCriteriaString))
        childCriteria.setValueType(getValueType(childCriteriaString))
        childCriteria.setValues(getValues(childCriteriaString))
        childCriteria.setComposite(getIsComposite(sqlStatement, childCriteriaString))
        childCriteria.setJoinOperator(getJoinOperator(sqlStatement, childCriteriaString))

        return childCriteria
    }
}
