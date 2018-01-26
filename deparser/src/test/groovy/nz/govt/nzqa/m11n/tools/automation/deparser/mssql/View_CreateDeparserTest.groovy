package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class View_CreateDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //create view dbo.mc_vw_sqr_event
        //as
        //select sqr_event.se_id, sqr_event.table_name, sqr_event.system_key, sqr_event.natural_key_1, sqr_event.natural_key_2, sqr_event.change_type, sqr_event.created_date, sqr_event.completed_date, sqr_event.event_table, sqr_event.event_table_id from sqr_event
        //where se_id > 1526477
        //--where created_date > '5 Feb 2016'
        //go
        //GRANT SELECT ON dbo.mc_vw_sqr_event TO eqa_user
        //go

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_VIEW.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("mc_vw_sqr_event")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DERIEVED.getObjKey())
        entity.setQueryValue("select sqr_event.se_id, sqr_event.table_name, sqr_event.system_key, sqr_event.natural_key_1, sqr_event.natural_key_2, sqr_event.change_type, sqr_event.created_date, sqr_event.completed_date, sqr_event.event_table, sqr_event.event_table_id from sqr_event\n" +
                "where se_id > 1526477\n" +
                "--where created_date > '5 Feb 2016'")

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('mc_vw_sqr_event')
        relation1.setGrantTo('eqa_user')

        def grantMap = ['g1': relation1]
        entity.setGrants(grantMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testViewDeparser() {
        System.out.print(deparser.deParse())

    }

}
