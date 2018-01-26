package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Table_CreateDerievedDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //CREATE TABLE dbo.DerievedTableTest
        //as
        //        select field1, field2 from table1
        //GRANT REFERENCES ON dbo.DerievedTableTest TO eqa_user
        //go

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_TABLE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("DerievedTableTest")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DERIEVED.getObjKey())
        entity.setQueryValue("select field1, field2 from table1")

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_REFERENCES.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('DerievedTableTest')
        relation1.setGrantTo('eqa_user')

        def grantMap = ['g1': relation1]
        entity.setGrants(grantMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testTableDeparser() {
        System.out.print(deparser.deParse())

    }

}
