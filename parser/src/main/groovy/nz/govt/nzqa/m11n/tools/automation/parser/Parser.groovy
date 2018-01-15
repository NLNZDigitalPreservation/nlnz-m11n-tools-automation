package nz.govt.nzqa.m11n.tools.automation.parser

interface Parser {

    Object parse(File file)
    Object parse(String sqlStatement)
}
