package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.dbmigrate.model.Utilities
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Index_CreateDeparserTest {
    IndexDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //CREATE NONCLUSTERED INDEX idx_accreditation_01
        //ON dbo.ACCREDITATION(std_number)

        Index index = new Index()
        index.setType(DBObjMapper.INDEX_NONCLUSTERED.getObjKey())
        index.setDatabaseName("dbo")
        index.setName("idx_accreditation_01")
        index.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        index.setTableName("ACCREDITATION")
        index.setFieldNames(Arrays.asList("std_number", "field2"))

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new IndexDeparser(index, ow)
    }

    @Test
    void testIndexDeparser() {
        System.out.print(deparser.deParse())

    }

}
