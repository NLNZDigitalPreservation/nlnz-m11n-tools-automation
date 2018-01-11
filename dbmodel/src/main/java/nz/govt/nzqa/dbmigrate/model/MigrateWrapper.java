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
