package nz.govt.nzqa.dbmigrate.model;

import java.util.LinkedList;
import java.util.List;

public class Criteria {
    private String type;
    private String fieldName;
    private String operation;
    private String valueType;
    private List<Object> values;
    private boolean isComposite;
    private String joinOperator;
    private LinkedList<Criteria> joinCriteria;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getValueType() {
        return valueType;
    }

    public void setValueType(String valueType) {
        this.valueType = valueType;
    }

    public List<Object> getValues() {
        return values;
    }

    public void setValues(List<Object> values) {
        this.values = values;
    }

    public boolean isComposite() {
        return isComposite;
    }

    public void setComposite(boolean composite) {
        isComposite = composite;
    }

    public String getJoinOperator() {
        return joinOperator;
    }

    public void setJoinOperator(String joinOperator) {
        this.joinOperator = joinOperator;
    }

    public LinkedList<Criteria> getJoinCriteria() {
        return joinCriteria;
    }

    public void setJoinCriteria(LinkedList<Criteria> joinCriteria) {
        this.joinCriteria = joinCriteria;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer( "[type=" + type +
                ", fieldName=" + fieldName +
                ", operation=" + operation +
                ", valueType=" + valueType +
                ", values={");
                for (Object o: values) {
                    buff.append(o.toString() + ",");
                }
                buff.append("}, isComposite=" + isComposite +
                ", joinOperator=" + joinOperator +
                ", joinCriteria={");
                for (Criteria c: joinCriteria) {
                    buff.append(c.toString() + ",");
                }
                buff.append("}]");

        return super.toString();
    }
}
