package nz.govt.nzqa.m11n.tools.automation.parser

interface Parser {

    Object parse(File file, String schema)
    Object parse(String sqlStatement)
}
