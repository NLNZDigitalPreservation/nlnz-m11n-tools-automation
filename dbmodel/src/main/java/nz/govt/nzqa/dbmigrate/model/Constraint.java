package nz.govt.nzqa.dbmigrate.model;

import java.util.List;

public class Constraint {
    private String type;
    private String name;
    private String subType;
    private String action;
    private List<Object> fields;
    private String tableName;
    private String referenceTableName;
    private List<Object> referenceFields;
    private Criteria criteria;


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubType() {
        return subType;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public List<Object> getFields() {
        return fields;
    }

    public void setFields(List<Object> fields) {
        this.fields = fields;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getReferenceTableName() {
        return referenceTableName;
    }

    public void setReferenceTableName(String referenceTableName) {
        this.referenceTableName = referenceTableName;
    }

    public List<Object> getReferenceFields() {
        return referenceFields;
    }

    public void setReferenceFields(List<Object> referenceFields) {
        this.referenceFields = referenceFields;
    }

    public Criteria getCriteria() {
        return criteria;
    }

    public void setCriteria(Criteria criteria) {
        this.criteria = criteria;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer( "[type=" + type +
                ", name=" + name +
                ", subType=" + subType +
                ", action=" + action +
                ", fields={");
                for (Object o: fields) {
                    buff.append(o.toString() + ",");
                }
                buff.append("}, table=" + tableName +
                ", referenceTable=" + referenceTableName +
                ", referenceFields={");
                for (Object o: referenceFields) {
                    buff.append(o.toString() + ",");
                }
                buff.append("}, criteria=" + criteria.toString() +
                "]");

        return super.toString();
    }
}
