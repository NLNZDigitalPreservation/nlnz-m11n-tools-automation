package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import org.junit.Before
import org.junit.Test
import nz.govt.nzqa.dbmigrate.model.Attribute

class AttributeDeparserTest {

    AttributeDeparser deparser;

    @Before
    void setUp(){
        Attribute attribute = new Attribute()
        attribute.setType(DBObjMapper.KEY_COLUMN.getObjKey())
        attribute.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        attribute.setName('inheriting_moe_provider_id')
        attribute.setDataType('OBJECT_ID')
        attribute.setNull(false)

        deparser = new AttributeDeparser(attribute)
    }

    @Test
    void testAttributeDeparser() {
        System.out.print(deparser.deParse())

    }
}
