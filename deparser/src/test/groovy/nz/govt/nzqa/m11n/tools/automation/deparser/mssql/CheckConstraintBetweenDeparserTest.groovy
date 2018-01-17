package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria
import org.junit.Before
import org.junit.Test

class CheckConstraintBetweenDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        //ALTER TABLE dbo.MARKER_CODE
        //ADD CONSTRAINT MARKER_COD_assign_233413220
        //CHECK (assigned_marker_code between 1000 and 9999)
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_CHECK.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint.setName('MARKER_COD_assign_233413220')
        constraint.setTableName('MARKER_CODE')

        Criteria criteria1 = new Criteria()
        criteria1.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria1.setFieldName('assigned_marker_code')
        criteria1.setOperation(DBObjMapper.SPECIAL_OPERATOR_BETWEEN)
        criteria1.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        criteria1.setValues(new ArrayList<Object>(Arrays.asList('1000', '9999')))

        constraint.setCriteria(criteria1)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testPrimaryKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
