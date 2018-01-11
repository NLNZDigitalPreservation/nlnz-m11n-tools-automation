package nz.govt.nzqa.dbmigrate.model;

import java.util.Map;

public class Utilities {
    private String databaseName;
    private String type;
    private String name;
    private String action;
    private Map<String, Param> inFields;
    private String returnType;
    private String sql;
    private Map<String, Relation> grants;

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

    public Map<String, Param> getInFields() {
        return inFields;
    }

    public void setInFields(Map<String, Param> inFields) {
        this.inFields = inFields;
    }

    public String getReturnType() {
        return returnType;
    }

    public void setReturnType(String returnType) {
        this.returnType = returnType;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public Map<String, Relation> getGrants() {
        return grants;
    }

    public void setGrants(Map<String, Relation> grants) {
        this.grants = grants;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[database=" + databaseName +
                ", type=" + type +
                ", name=" + name +
                ", action=" + action +
                ", inFields={");
                for (Param a: inFields.values()) {
                    buff.append(a.toString() + ",");
                }
                buff.append("}, returnType=" + returnType +
                ", sql=" + sql +
                ", grants={");
                for (Relation a: grants.values()) {
                    buff.append(a.toString() + ",");
                }
                buff.append("}]");
        return buff.toString();
    }
}
