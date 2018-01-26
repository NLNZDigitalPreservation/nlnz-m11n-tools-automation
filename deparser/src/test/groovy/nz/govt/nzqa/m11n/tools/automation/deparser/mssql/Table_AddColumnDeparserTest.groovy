package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Relation
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper.OutputWritter
import org.junit.Before
import org.junit.Test

class Table_AddColumnDeparserTest {
    EntityDeparser deparser;
    String basePath = "C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls"
    OutputWritter ow

    @Before
    void setUp(){
        //ALTER TABLE dbo.TESTTABLE
        //(
        //        add TESTCOLUMN      VARCHAR(100) NOT NULL
        //)

        Entity entity = new Entity()
        entity.setType(DBObjMapper.ENTITY_TABLE.getObjKey())
        entity.setDatabaseName("dbo")
        entity.setName("TESTTABLE")
        entity.setAction(DBObjMapper.ACTION_ALTER.getObjKey())
        entity.setOperationType(DBObjMapper.OPERATION_DIRECT.getObjKey())

        Attribute attribute1 = new Attribute()
        attribute1.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute1.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        attribute1.setName('TESTCOLUMN')
        attribute1.setDataType('VARCHAR')
        attribute1.setLength('100')
        attribute1.setNull(false)

        def attributesMap = ['allocation_method': attribute1]
        entity.setFields(attributesMap)

        ow = new OutputWritter(basePath,"web_eqa")
        deparser = new EntityDeparser(entity, ow)
    }

    @Test
    void testTableDeparser() {
        System.out.print(deparser.deParse())

    }

}
