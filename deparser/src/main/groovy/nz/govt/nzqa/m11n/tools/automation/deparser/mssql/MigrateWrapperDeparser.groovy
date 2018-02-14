package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.WritableDeparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

import javax.swing.text.Utilities

class MigrateWrapperDeparser extends WritableDeparser{

    MigrateWrapper wrapper
    String outputStatement

    private MigrateWrapperDeparser() {}

    MigrateWrapperDeparser(MigrateWrapper wrapper1, OutputWritter outputWritter1) {
        super(outputWritter1)
        this.wrapper = wrapper1
    }

    String deParse() {
        frameOutputStatement()
        outputToFile()
        return outputStatement
    }

    void outputToFile() {
        if (MSSQLConstants.WRITE_CONSOLIDATED_FILE && outputWritter != null && outputStatement != null && outputStatement.trim().length()>0) {

            outputFileName = wrapper.getSchema()

            outputWritter.createConsolidatedSchema(outputFileName, "Consolidated", outputStatement.toString())
        }
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        if (wrapper.getSchema() != null && wrapper.getSchema().trim().length()>0) {

            //buff.append("USE [$wrapper.schema] \n")
            //buff.append(MSSQLConstants.CLOSE_BLOCK)

            if (wrapper.getTables() != null && wrapper.getTables().size()>0) {
                EntityDeparser ed
                for (table in wrapper.getTables().values()) {
                    ed = new EntityDeparser(table, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getKeys() != null && wrapper.getKeys().size()>0) {
                EntityDeparser ed
                for (key in wrapper.getKeys().values()) {
                    ed = new EntityDeparser(key, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getConstraints() != null && wrapper.getConstraints().size()>0) {
                EntityDeparser ed
                for (constraint in wrapper.getConstraints().values()) {
                    ed = new EntityDeparser(constraint, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getDefaults() != null && wrapper.getDefaults().size()>0) {
                EntityDeparser ed
                for (deflt in wrapper.getDefaults().values()) {
                    ed = new EntityDeparser(deflt, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getCustomDataTypes() != null && wrapper.getCustomDataTypes().size()>0) {
                EntityDeparser ed
                for (dataType in wrapper.getCustomDataTypes().values()) {
                    ed = new EntityDeparser(dataType, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getViews() != null && wrapper.getViews().size()>0) {
                EntityDeparser ed
                for (vu in wrapper.getViews().values()) {
                    ed = new EntityDeparser(vu, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getGroups() != null && wrapper.getGroups().size()>0) {
                EntityDeparser ed
                for (grp in wrapper.getGroups().values()) {
                    ed = new EntityDeparser(grp, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getUsers() != null && wrapper.getUsers().size()>0) {
                EntityDeparser ed
                for (usr in wrapper.getUsers().values()) {
                    ed = new EntityDeparser(usr, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getRules() != null && wrapper.getRules().size()>0) {
                EntityDeparser ed
                for (rule in wrapper.getRules().values()) {
                    ed = new EntityDeparser(rule, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getMessages() != null && wrapper.getMessages().size()>0) {
                EntityDeparser ed
                for (msg in wrapper.getMessages().values()) {
                    ed = new EntityDeparser(msg, outputWritter)
                    buff.append(ed.deParse())
                }
            }

            if (wrapper.getIndexes() != null && wrapper.getIndexes().size()>0) {
                IndexDeparser id
                for (idx in wrapper.getIndexes().values()) {
                    id = new IndexDeparser(idx, outputWritter)
                    buff.append(id.deParse())
                }
            }

            if (wrapper.getProcedures() != null && wrapper.getProcedures().size()>0) {
                UtilitiesDeparser ud
                for (proc in wrapper.getProcedures().values()) {
                    ud = new UtilitiesDeparser(proc, outputWritter)
                    buff.append(ud.deParse())
                }
            }

            if (wrapper.getTriggers() != null && wrapper.getTriggers().size()>0) {
                UtilitiesDeparser ud
                for (trig in wrapper.getTriggers().values()) {
                    ud = new UtilitiesDeparser(trig, outputWritter)
                    buff.append(ud.deParse())
                }
            }

            //Not in use for now
            if (wrapper.getFunctions() != null && wrapper.getFunctions().size()>0) {
                UtilitiesDeparser ud
                for (fn in wrapper.getFunctions().values()) {
                    ud = new UtilitiesDeparser(fn, outputWritter)
                    buff.append(ud.deParse())
                }
            }

        }

        outputStatement = buff.toString()
    }

}
