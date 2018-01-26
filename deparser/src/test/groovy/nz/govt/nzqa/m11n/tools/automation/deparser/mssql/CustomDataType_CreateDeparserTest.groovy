package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class CustomDataType_CreateDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //EXEC sp_addtype 'UNI_ADDR_LINE','univarchar(160)','NULL'
        //go

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_DATATYPE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("UNI_ADDR_LINE")
        entity.setAction(DBObjMapper.ACTION_ADD_DATATYPE.getObjKey())
        entity.setDataType("univarchar(160)")
        entity.setQueryValue("NULL")

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testDataTypeDeparser() {
        System.out.print(deparser.deParse())

    }

}
