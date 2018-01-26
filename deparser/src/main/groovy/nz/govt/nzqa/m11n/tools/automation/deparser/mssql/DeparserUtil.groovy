package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base.Deparser
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.MSSQLConstants
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

//@EnableAutoConfiguration
class DeparserUtil implements Deparser{

    List<MigrateWrapper> wrappers
    String outputStatement
    OutputWritter ow
    String basePath

    DeparserUtil(List<MigrateWrapper> wrappers1) {
        this(wrappers1, MSSQLConstants.DEFAULT_BASEPATH)
    }

    DeparserUtil(List<MigrateWrapper> wrappers1, String path) {
        this.wrappers = wrappers1
        this.basePath = path
    }

    String deParse() {
        frameOutputStatement()
        return outputStatement
    }

    void frameOutputStatement(){
        StringBuffer buff = new StringBuffer("")

        if (wrappers != null && wrappers.size()>0) {

            MigrateWrapperDeparser mwd
            for (wrapper in wrappers) {
                ow = new OutputWritter(basePath,wrapper.getSchema())
                mwd = new MigrateWrapperDeparser(wrapper, ow)
                buff.append(mwd.deParse())

                //ow.createTableFile('testFileName', 'Create', content)

                //outputToFile( "" , , buff.toString())
            }

        }

        outputStatement = buff.toString()
    }

    void outputToFile(String basePath, String schemaName, String content) {
        //OutputWritter ow = new OutputWritter(basePath,schemaName)
        ow.createTableFile('testFileName', 'Create', content)

        System.out.println("Written content:::" + content);
    }
}
