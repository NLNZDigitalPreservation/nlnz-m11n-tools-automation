package nz.govt.nzqa.m11n.tools.automation.deparser.mssql.base

import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter

abstract class WritableDeparser implements Deparser{
    OutputWritter outputWritter
    String outputFileName
    String action

    WritableDeparser() {
    }

    protected WritableDeparser(OutputWritter outputWritter1) {
        this.outputWritter = outputWritter1
    }

    protected void resetWriteAttributes() {
        outputFileName = ''
        action = ''
    }

}
