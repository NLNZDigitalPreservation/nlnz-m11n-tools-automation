package nz.govt.nzqa.dbmigrate.model;

import java.util.Map;

public class MigrateWrapper {
    private String schema;
    private Map<String, Entity> defaults;
    private Map<String, Entity> customDataTypes;
    private Map<String, Entity> tables;
    private Map<String, Entity> keys;
    private Map<String, Entity> constraints;
    private Map<String, Index> indexes;
    private Map<String, Entity> views;
    private Map<String, Utilities> triggers;
    private Map<String, Utilities> procedures;
    private Map<String, Utilities> functions;
    private Map<String, Entity> users;
    private Map<String, Entity> groups;
    private Map<String, Entity> rules;
    private Map<String, Entity> messages;


    public String getSchema() {
        return schema;
    }

    public void setSchema(String schema) {
        this.schema = schema;
    }

    public Map<String, Entity> getDefaults() {
        return defaults;
    }

    public void setDefaults(Map<String, Entity> defaults) {
        this.defaults = defaults;
    }

    public Map<String, Entity> getCustomDataTypes() {
        return customDataTypes;
    }

    public void setCustomDataTypes(Map<String, Entity> customDataTypes) {
        this.customDataTypes = customDataTypes;
    }

    public Map<String, Entity> getTables() {
        return tables;
    }

    public void setTables(Map<String, Entity> tables) {
        this.tables = tables;
    }

    public Map<String, Entity> getKeys() {
        return keys;
    }

    public void setKeys(Map<String, Entity> keys) {
        this.keys = keys;
    }

    public Map<String, Entity> getConstraints() {
        return constraints;
    }

    public void setConstraints(Map<String, Entity> constraints) {
        this.constraints = constraints;
    }

    public Map<String, Index> getIndexes() {
        return indexes;
    }

    public void setIndexes(Map<String, Index> indexes) {
        this.indexes = indexes;
    }

    public Map<String, Entity> getViews() {
        return views;
    }

    public void setViews(Map<String, Entity> views) {
        this.views = views;
    }

    public Map<String, Utilities> getTriggers() {
        return triggers;
    }

    public void setTriggers(Map<String, Utilities> triggers) {
        this.triggers = triggers;
    }

    public Map<String, Utilities> getProcedures() {
        return procedures;
    }

    public void setProcedures(Map<String, Utilities> procedures) {
        this.procedures = procedures;
    }

    public Map<String, Utilities> getFunctions() {
        return functions;
    }

    public void setFunctions(Map<String, Utilities> functions) {
        this.functions = functions;
    }

    public Map<String, Entity> getUsers() {
        return users;
    }

    public void setUsers(Map<String, Entity> users) {
        this.users = users;
    }

    public Map<String, Entity> getGroups() {
        return groups;
    }

    public void setGroups(Map<String, Entity> groups) {
        this.groups = groups;
    }

    public Map<String, Entity> getRules() {
        return rules;
    }

    public void setRules(Map<String, Entity> rules) {
        this.rules = rules;
    }

    public Map<String, Entity> getMessages() {
        return messages;
    }

    public void setMessages(Map<String, Entity> messages) {
        this.messages = messages;
    }

    @Override
    public String toString() {
        StringBuffer buff = new StringBuffer("MigrateWrapper [schema=" + schema + ", defaults={");
                for (Entity e: defaults.values()) {
                    buff.append(e.toString() + ", ");
                }
                buff.append("}, customDataTypes= {");
                for (Entity e: customDataTypes.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, tables={");
                for (Entity e: tables.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, keys={");
                for (Entity e: keys.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, constraints={");
                for (Entity e: constraints.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, indexes={");
                for (Index e: indexes.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, views={");
                for (Entity e: views.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, triggers={");
                for (Utilities e: triggers.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, procedures={");
                for (Utilities e: procedures.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, functions={");
                for (Utilities e: functions.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, users={");
                for (Entity e: users.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, groups={");
                for (Entity e: groups.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, rules={");
                for (Entity e: rules.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}, messages={");
                for (Entity e: messages.values()) {
                    buff.append(e.toString() + ",");
                }
                buff.append("}]");
        return buff.toString();
    }
}
