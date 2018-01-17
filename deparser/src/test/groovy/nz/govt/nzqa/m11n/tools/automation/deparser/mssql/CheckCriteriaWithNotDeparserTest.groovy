package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Criteria
import org.junit.Before
import org.junit.Test

class CheckCriteriaWithNotDeparserTest {

    Criteria criteria
    CriteriaDeparser deparser;

    @Before
    void setUp(){
        //CKT_PERORG
        //not (perorg_type_code = 'O' and is_learner = 1)
        criteria = new Criteria()
        criteria.setType(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey())
        criteria.setComposite(false)
        criteria.setJoinOperator('NOT')

        Criteria criteria1 = new Criteria()
        criteria1.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria1.setFieldName('perorg_type_code')
        criteria1.setOperation("=")
        criteria1.setValueType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        criteria1.setValues(new ArrayList<Object>(Arrays.asList('0')))
        criteria1.setComposite(true)

        Criteria criteria2 = new Criteria()
        criteria2.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria2.setFieldName('is_learner')
        criteria2.setOperation("=")
        criteria2.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        criteria2.setValues(new ArrayList<Object>(Arrays.asList('1')))
        criteria2.setJoinOperator('AND')
        criteria2.setComposite(false)

        criteria1.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria2)))
        criteria.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria1)))

        deparser = new CriteriaDeparser(criteria)
    }

    @Test
    void testCriteriaDeparser() {
        System.out.print(deparser.deParse())
    }

}
