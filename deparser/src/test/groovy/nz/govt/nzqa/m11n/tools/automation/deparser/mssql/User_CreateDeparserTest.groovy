package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class User_CreateDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //EXEC sp_adduser 'web_appserver_intranet','web_appserver_intranet','public'
        //go
        //GRANT SELECT ON dbo.w_markers TO web_appserver_intranet
        //go
        //GRANT SELECT ON dbo.w_providers TO web_appserver_intranet
        //go

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_USER.getObjKey())
        entity.setName("web_appserver_intranet")
        entity.setDataType("web_appserver_intranet")
        entity.setQueryValue("public")
        entity.setDatabaseName("dbo")
        entity.setAction(DBObjMapper.ACTION_ADD_USER.getObjKey())

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('w_markers')
        relation1.setGrantTo('web_appserver_intranet')

        Relation relation2 = new Relation()
        relation2.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation2.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation2.setGrantObjectDB('dbo')
        relation2.setGrantObjectName('w_providers')
        relation2.setGrantTo('web_appserver_intranet')

        def grantMap = ['g1': relation1, 'g2': relation2]
        entity.setGrants(grantMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testDataTypeDeparser() {
        System.out.print(deparser.deParse())

    }

}
