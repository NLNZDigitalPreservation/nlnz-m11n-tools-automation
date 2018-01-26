package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.WritableDeparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

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
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        if (wrapper.getSchema() != null && wrapper.getSchema().trim().length()>0) {

            buff.append("USE [$wrapper.schema] \n")
            buff.append(MSSQLConstants.CLOSE_BLOCK)

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

        }

        outputStatement = buff.toString()
    }

}
