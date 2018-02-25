package nz.govt.nzqa.dbmigrate.model;

import java.util.Map;

public class SQLSplit {
    private String sqlTemplate;
    private Map<String, Entity> tempTables;
    private Map<String, String> joinSelects;
    private Map<String, String> identitySelects;

    public String getSqlTemplate() {
        return sqlTemplate;
    }

    public void setSqlTemplate(String sqlTemplate) {
        this.sqlTemplate = sqlTemplate;
    }

    public Map<String, Entity> getTempTables() {
        return tempTables;
    }

    public void setTempTables(Map<String, Entity> tempTables) {
        this.tempTables = tempTables;
    }

    public Map<String, String> getJoinSelects() {
        return joinSelects;
    }

    public void setJoinSelects(Map<String, String> joinSelects) {
        this.joinSelects = joinSelects;
    }

    public Map<String, String> getIdentitySelects() {
        return identitySelects;
    }

    public void setIdentitySelects(Map<String, String> identitySelects) {
        this.identitySelects = identitySelects;
    }

}
