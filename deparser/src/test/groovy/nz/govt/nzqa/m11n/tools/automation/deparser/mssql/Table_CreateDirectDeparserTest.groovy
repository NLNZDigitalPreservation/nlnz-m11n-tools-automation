package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Table_CreateDirectDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //CREATE TABLE dbo.ALLOCATION_METHOD
        //(
        //        allocation_method      code_2 NOT NULL,
        //        allocation_method_desc descr  NOT NULL,
        //CONSTRAINT PK_ALLOCATION_METHOD
        //PRIMARY KEY CLUSTERED (allocation_method)
        //)
        //LOCK DATAROWS
        //GRANT REFERENCES ON dbo.ALLOCATION_METHOD TO eqa_user
        //go
        //GRANT SELECT ON dbo.ALLOCATION_METHOD TO eqa_user

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_TABLE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("ALLOCATION_METHOD")
        entity.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Attribute attribute1 = new Attribute()
        attribute1.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute1.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        attribute1.setName('allocation_method')
        attribute1.setDataType('code_2')
        attribute1.setNull(false)

        Attribute attribute2 = new Attribute()
        attribute2.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute2.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        attribute2.setName('allocation_method_desc')
        attribute2.setDataType('descr')
        attribute2.setNull(false)

        def attributesMap = ['allocation_method': attribute1, 'allocation_method_desc': attribute2]
        entity.setFields(attributesMap)

        Constraint constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        constraint.setName('PK_ALLOCATION_METHOD')
        constraint.setSubType(DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey())
        List<String> fields = ['allocation_method']
        constraint.setFields(fields)

        def constraintMap = ['PK_ALLOCATION_METHOD': constraint]
        entity.setConstraints(constraintMap)

        Relation relation1 = new Relation()
        relation1.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation1.setAction(DBObjMapper.ACTION_REFERENCES.getObjKey())
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('ALLOCATION_METHOD')
        relation1.setGrantTo('eqa_user')

        Relation relation2 = new Relation()
        relation2.setType(DBObjMapper.KEY_GRANT.getObjKey())
        relation2.setAction(DBObjMapper.ACTION_SELECT.getObjKey())
        relation2.setGrantObjectDB('dbo')
        relation2.setGrantObjectName('ALLOCATION_METHOD')
        relation2.setGrantTo('eqa_user')

        def grantMap = ['g1': relation1, "g2": relation2]
        entity.setGrants(grantMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testTableDeparser() {
        System.out.print(deparser.deParse())

    }

}
