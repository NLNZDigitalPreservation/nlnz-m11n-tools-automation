package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria
import org.junit.Before
import org.junit.Test

class CheckConstraintINDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        //ALTER TABLE dbo.CFN_CATEGORY
        //ADD CONSTRAINT CHK_CFN_CATEGORY_STAR_EXCL_LVL
        //CHECK (star_excluded_level_code in ('01','02','03','04'))
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_CHECK.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint.setName('CHK_CFN_CATEGORY_STAR_EXCL_LVL')
        constraint.setTableName('CFN_CATEGORY')

        Criteria criteria1 = new Criteria()
        criteria1.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria1.setFieldName('star_excluded_level_code')
        criteria1.setOperation(DBObjMapper.SPECIAL_OPERATOR_IN)
        criteria1.setValueType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        criteria1.setValues(new ArrayList<Object>(Arrays.asList('01', '02', '03', '04')))

        constraint.setCriteria(criteria1)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testPrimaryKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
