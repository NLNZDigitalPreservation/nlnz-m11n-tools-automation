package nz.govt.nzqa.m11n.tools.automation.deparser.mssql

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Constraint
import nz.govt.nzqa.dbmigrate.model.Criteria
import org.junit.Before
import org.junit.Test

class CheckConstraintISComplexDeparserTest {

    Constraint constraint
    ConstraintDeparser deparser;

    @Before
    void setUp(){
        //ALTER TABLE dbo.ENTRY_PERSONALISATION
        //ADD CONSTRAINT CKT_ENTRY_PERSONALISATION
        //CHECK ((marker_allocation_group_id is null and marker_panel_ag_id is not null)
        //        or
        //       (marker_allocation_group_id is not null and marker_panel_ag_id is null)
        //      )
        constraint = new Constraint()
        constraint.setType(DBObjMapper.CONSTRAINT_CHECK.getObjKey())
        constraint.setAction(DBObjMapper.ACTION_ADD.getObjKey())
        constraint.setName('CKT_ENTRY_PERSONALISATION')
        constraint.setTableName('ENTRY_PERSONALISATION')

        Criteria criteria = new Criteria()
        criteria.setType(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey())
        criteria.setComposite(true)

        Criteria criteriawrap1 = new Criteria()
        criteriawrap1.setType(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey())
        criteriawrap1.setComposite(true)

        Criteria criteriawrap2 = new Criteria()
        criteriawrap2.setType(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey())
        criteriawrap2.setComposite(false)
        criteriawrap2.setJoinOperator("OR")

        //CHECK ((marker_allocation_group_id is null and marker_panel_ag_id is not null)
        Criteria criteria1 = new Criteria()
        criteria1.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria1.setFieldName('marker_allocation_group_id')
        criteria1.setOperation(DBObjMapper.SPECIAL_OPERATOR_IS)
        criteria1.setValues(new ArrayList<Object>(Arrays.asList('NULL')))
        criteria1.setComposite(true)

        Criteria criteria2 = new Criteria()
        criteria2.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria2.setFieldName('marker_panel_ag_id')
        criteria2.setOperation(DBObjMapper.SPECIAL_OPERATOR_IS)
        criteria2.setValues(new ArrayList<Object>(Arrays.asList('NOT NULL')))
        criteria2.setJoinOperator('AND')
        criteria2.setComposite(false)

        criteria1.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria2)))

        //       (marker_allocation_group_id is not null and marker_panel_ag_id is null)
        Criteria criteria3 = new Criteria()
        criteria3.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria3.setFieldName('marker_allocation_group_id')
        criteria3.setOperation(DBObjMapper.SPECIAL_OPERATOR_IS)
        criteria3.setValues(new ArrayList<Object>(Arrays.asList('NOT NULL')))
        criteria3.setComposite(true)

        Criteria criteria4 = new Criteria()
        criteria4.setType(DBObjMapper.CRITERIA_CHECK.getObjKey())
        criteria4.setFieldName('marker_panel_ag_id')
        criteria4.setOperation(DBObjMapper.SPECIAL_OPERATOR_IS)
        criteria4.setValues(new ArrayList<Object>(Arrays.asList('NULL')))
        criteria4.setJoinOperator('AND')
        criteria4.setComposite(false)

        criteria3.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria4)))


        criteriawrap1.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria1)))
        criteriawrap2.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteria3)))
        criteria.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(criteriawrap1, criteriawrap2)))
        constraint.setCriteria(criteria)

        deparser = new ConstraintDeparser(constraint)
    }

    @Test
    void testPrimaryKeyDeparser() {
        System.out.print(deparser.deParse())
    }

}
