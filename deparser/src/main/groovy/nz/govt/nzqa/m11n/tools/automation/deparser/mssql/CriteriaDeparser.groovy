package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Criteria

class CriteriaDeparser implements Deparser{

    Criteria criteria
    String outputStatement

    CriteriaDeparser(Criteria criteria1) {
        this.criteria = criteria1
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")
        buff.append(recursiveCriteriaParse(criteria))
        outputStatement = buff.toString();
    }

    String recursiveCriteriaParse(Criteria criteria) {
        StringBuffer bf = new StringBuffer("")
        switch (criteria.getType()) {
            case(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey()):
                if (!criteria.isComposite() && criteria.getJoinOperator() == "NOT") {
                    bf.append(" NOT (")
                    for (c in criteria.getJoinCriteria()) {
                        bf.append(recursiveCriteriaParse(c))
                    }
                    bf.append(") ")
                } else
                {
                    //process criteria vallue for CheckWrapper cases, irrespective of criteria.isComposite()
                    bf.append("(")
                    for (c in criteria.getJoinCriteria()) {
                        if (c.getJoinOperator() != null && c.getJoinOperator().length()>0) {
                            bf.append(" $c.joinOperator ")
                        }
                        bf.append(recursiveCriteriaParse(c))
                    }
                    bf.append(")")
                }
                break
            case(DBObjMapper.CRITERIA_CHECK.getObjKey()):
                        if (criteria.getJoinOperator() != null && criteria.getJoinOperator().length()>0) {
                            bf.append(" $criteria.joinOperator ")
                        }

                        switch (criteria.getOperation()) {
                            case (DBObjMapper.OPERATORS):
                                bf.append(" [$criteria.fieldName] ")
                                bf.append(" $criteria.operation ")
                                switch (criteria.getValueType()) {
                                    case (DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(0), DBObjMapper.CRITERIA_VALUETYPE_INT))
                                        break

                                    case (DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(0), DBObjMapper.CRITERIA_VALUETYPE_CHAR))
                                        break
                                }

                                break
                            case (DBObjMapper.SPECIAL_OPERATOR_IN):

                                bf.append(" ([$criteria.fieldName] ")
                                bf.append(" = ")
                                boolean firstCal = true
                                for (val in criteria.values) {
                                    if (!firstCal) {
                                        bf.append(" OR [$criteria.fieldName] = ")
                                    }
                                    firstCal = false
                                    switch (criteria.getValueType()) {
                                        case (DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                                            bf.append(addValue( val, DBObjMapper.CRITERIA_VALUETYPE_INT))
                                            break

                                        case (DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()):
                                            bf.append(addValue( val, DBObjMapper.CRITERIA_VALUETYPE_CHAR))
                                            break
                                    }
                                }
                                bf.append(" ) ")

                                break
                            case (DBObjMapper.SPECIAL_OPERATOR_IS):

                                bf.append(" [$criteria.fieldName] " + DBObjMapper.SPECIAL_OPERATOR_IS + " " + criteria.getValues().get(0))
                                break
                            case (DBObjMapper.SPECIAL_OPERATOR_BETWEEN):

                                bf.append(" ([$criteria.fieldName] >= " )
                                switch (criteria.getValueType()) {
                                    case (DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(0), DBObjMapper.CRITERIA_VALUETYPE_INT))
                                        break

                                    case (DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(0), DBObjMapper.CRITERIA_VALUETYPE_CHAR))
                                        break
                                }
                                bf.append(" AND [$criteria.fieldName] <= " )
                                switch (criteria.getValueType()) {
                                    case (DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(1), DBObjMapper.CRITERIA_VALUETYPE_INT))
                                        break

                                    case (DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()):
                                        bf.append(addValue( criteria.getValues().get(1), DBObjMapper.CRITERIA_VALUETYPE_CHAR))
                                        break
                                }

                                bf.append(" ) " )
                                break
                        }
                        if (criteria.isComposite()) {
                            for (c in criteria.getJoinCriteria()) {
                                bf.append(recursiveCriteriaParse(c))
                            }
                        }

                break
        }

        return bf.toString()

    }

    private String addValue(String value, DBObjMapper.DataTypeMapper valueType) {
        StringBuffer bf = new StringBuffer("")
        bf.append(" " + valueType.getMssqlOpenQuote())
        bf.append(value)
        bf.append(valueType.getMssqlCloseQuote() + " ")
    }
}
