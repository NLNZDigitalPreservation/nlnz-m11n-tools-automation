package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import org.junit.Before
import org.junit.Test

class ForeignKeyConstraintDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_CREATE.getObjKey())
        constraint.setName('FK_ACCREDITATION_PROVIDER')
        constraint.setTableName('ACCREDITATION')

        List<String> fields = ['provider_id', 'location']
        constraint.setFields(fields)

        constraint.setReferenceTableName('PROVIDER')
        List<String> fkFields = ['moe_provider_id', 'location']
        constraint.setReferenceFields(fkFields)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testPrimaryKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
