package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Default_CreateDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //CREATE DEFAULT dbo.default_y AS 1

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_DEFAULT.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("default_y")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DEFAULT.getObjKey())
        entity.setQueryValue("1")

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testDefaultDeparser() {
        System.out.print(deparser.deParse())

    }

}
