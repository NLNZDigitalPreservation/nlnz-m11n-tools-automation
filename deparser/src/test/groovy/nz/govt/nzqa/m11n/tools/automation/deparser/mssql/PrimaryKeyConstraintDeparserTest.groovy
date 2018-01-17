package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import org.junit.Before
import org.junit.Test

class PrimaryKeyConstraintDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        constraint.setName('PK_ALLOCATION_GROUP_EXCLUDED')
        constraint.setSubType(DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey())
        List<String> fields = ['academic_year', 'address_type', 'allocation_group_id']
        constraint.setFields(fields)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testPrimaryKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
