package nz.govt.nzqa.dbmigrate.model;

import java.util.List;
import java.util.Map;

public class Entity {
    private String databaseName;
    private String type;
    private String name;
    private String action;
    private String operationType;
    private Map<String, Attribute> fields;
    private String dataType;
    private String queryValue;
    private Map<String, Constraint> constraints;
    private Map<String, Relation> grants;
    private List<String> locks;

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

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

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getOperationType() {
        return operationType;
    }

    public void setOperationType(String operationType) {
        this.operationType = operationType;
    }

    public Map<String, Attribute> getFields() {
        return fields;
    }

    public void setFields(Map<String, Attribute> fields) {
        this.fields = fields;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getQueryValue() {
        return queryValue;
    }

    public void setQueryValue(String queryValue) {
        this.queryValue = queryValue;
    }

    public Map<String, Constraint> getConstraints() {
        return constraints;
    }

    public void setConstraints(Map<String, Constraint> constraints) {
        this.constraints = constraints;
    }

    public Map<String, Relation> getGrants() {
        return grants;
    }

    public void setGrants(Map<String, Relation> grants) {
        this.grants = grants;
    }

    public List<String> getLocks() {
        return locks;
    }

    public void setLocks(List<String> locks) {
        this.locks = locks;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[database=" + databaseName +
                ", type=" + type +
                ", name=" + name +
                ", action=" + action +
                ", operationType=" + operationType +
                ", fields={");
                for (Attribute a: fields.values()) {
                    buff.append(a.toString() + ",");
                }
                buff.append("}, dataType=" + dataType +
                ", queryValue=" + queryValue +
                ", constraints={");
                for (Constraint c: constraints.values()) {
                    buff.append(c.toString() + ",");
                }
                buff.append("}, grants={");
                for (Relation c: grants.values()) {
                    buff.append(c.toString() + ",");
                }
                buff.append("}, locks={");
                for (String c: locks) {
                    buff.append(c + ",");
                }
                buff.append("}]");
        return buff.toString();
    }
}
