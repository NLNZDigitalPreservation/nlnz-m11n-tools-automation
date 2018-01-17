package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Relation
import org.junit.Before
import org.junit.Test

class RelationDeparserTest {

    RelationDeparser deparser;

    @Before
    void setUp(){
        Relation relation = new Relation()
        relation.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation.setGrantObjectDB('dbo')
        relation.setGrantObjectName('ALLOCATION_METHOD')
        relation.setGrantTo('eqa_user')

        deparser = new RelationDeparser(relation)
    }

    @Test
    void testRelationDeparser() {
        System.out.print(deparser.deParse())

    }
}
