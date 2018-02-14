package nz.govt.nzqa.dbmigrate.model;

import java.util.List;

public class Index {
    private String KEY_ALLOW_DUP = "ALLOW_DUP_ROW";

    private String type;
    private String name;
    private String action;
    private String databaseName;
    private String tableName;
    private List<String> fieldNames;
    private String withClause;

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

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public List<String> getFieldNames() {
        return fieldNames;
    }

    public void setFieldNames(List<String> fieldNames) {
        this.fieldNames = fieldNames;
    }

    public String getWithClause() {
        return withClause;
    }

    public void setWithClause(String withClause) {
        this.withClause = withClause;
    }

    public boolean isDuplicateAllowed () {
        if (withClause != null && withClause.trim().length()>0) {
            return withClause.trim().indexOf(KEY_ALLOW_DUP) > -1;
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("[type=" + type +
                ", name=" + name +
                ", action=" + action +
                ", databaseName=" + databaseName +
                ", tableName=" + tableName +
                ", fieldNames={");
                for (String a: fieldNames) {
                    buff.append(a + ",");
                }
                buff.append("}, withClause="+withClause +
                "]");
        return buff.toString();
    }
}
