package nz.govt.nzqa.dbmigrate.model;

import java.util.List;

public class Constraint {
    private String type;
    private String name;
    private String subType;
    private String action;
    private List<String> fields;
    private String tableName;
    private String referenceTableName;
    private List<String> referenceFields;
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

    public List<String> getFields() {
        return fields;
    }

    public void setFields(List<String> fields) {
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

    public List<String> getReferenceFields() {
        return referenceFields;
    }

    public void setReferenceFields(List<String> referenceFields) {
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
                if (fields!= null && fields.size()>0) {
                    for (String o : fields) {
                        buff.append(o + ",");
                    }
                }
                buff.append("}, table=" + tableName +
                        ", referenceTable=" + referenceTableName +
                        ", referenceFields={");
                if (referenceFields != null && referenceFields.size()>0) {
                    for (String o : referenceFields) {
                        buff.append(o + ",");
                    }
                }
                buff.append("}");
                if (criteria != null) {
                    buff.append(", criteria=" + criteria.toString());
                }
                buff.append("]");

        return super.toString();
    }
}
