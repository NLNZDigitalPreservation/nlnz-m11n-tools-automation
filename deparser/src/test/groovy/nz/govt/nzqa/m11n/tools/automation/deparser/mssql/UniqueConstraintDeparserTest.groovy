package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import org.junit.Before
import org.junit.Test

class UniqueConstraintDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_UNIQUE.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        constraint.setName('cnstr_ses_code')
        constraint.setSubType(DBObjMapper.CONSTRAINT_NONCLUSTERED.getObjKey())
        List<String> fields = ['session_code', 'assessment_cycle_id']
        constraint.setFields(fields)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testUniqueKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
