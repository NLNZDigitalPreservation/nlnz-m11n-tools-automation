package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Rule_CreateDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //CREATE RULE dbo.R_yn AS @column in (0,1)
        //go

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_RULE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("R_yn")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setQueryValue("@column in (0,1)")

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testRuleDeparser() {
        System.out.print(deparser.deParse())

    }

}
