package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Criteria
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertTrue
import static org.junit.Assert.assertFalse

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.CriteriaParser}.
 */

class CriteriaParserTest {

    CriteriaParser criteriaParser

    @Before
    void setup() {
        criteriaParser = new CriteriaParser()
    }

    @Test
    void shouldPickUpAllCheckWrappers(){
        String sqlStatment = 'ALTER TABLE dbo.COMPASSIONATE ADD CONSTRAINT CHK_SCHOOL_SUPPORT_IND ' +
                'CHECK (school_support_ind is null or school_support_ind = 0 or school_support_ind = 1 )'
        String checkStatement = "(school_support_ind is null or school_support_ind = 0 or school_support_ind = 1 )"
        String childCriteriaString1 = 'school_support_ind is null'
        String childCriteriaString2 = 'school_support_ind = 0'
        String childCriteriaString3 = 'school_support_ind = 1'

        Criteria childCriteria3 = new Criteria()
        childCriteria3.setType("CHECK")
        childCriteria3.setFieldName("school_support_ind")
        childCriteria3.setOperation("=")
        childCriteria3.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        childCriteria3.setValues(Arrays.asList('1'))
        childCriteria3.setJoinOperator(DBObjMapper.OPERATOR_OR)
        childCriteria3.setComposite(false)

        Criteria testChildCriteria3 = criteriaParser.getChildCriteria(checkStatement, childCriteriaString3)

        assertEquals(childCriteria3.getType(), testChildCriteria3.getType())
        assertEquals(childCriteria3.getFieldName(), testChildCriteria3.getFieldName())
        assertEquals(childCriteria3.getOperation(), testChildCriteria3.getOperation())
        assertEquals(childCriteria3.getValueType(), testChildCriteria3.getValueType())
        assertEquals(childCriteria3.getValues(), testChildCriteria3.getValues())
        assertEquals(childCriteria3.getJoinOperator(), testChildCriteria3.getJoinOperator())
        assertEquals(childCriteria3.isComposite(), testChildCriteria3.isComposite())
        assertEquals(childCriteria3.getJoinCriteria(), testChildCriteria3.getJoinCriteria())

        Criteria childCriteria2 = new Criteria()
        childCriteria2.setType("CHECK")
        childCriteria2.setFieldName("school_support_ind")
        childCriteria2.setOperation("=")
        childCriteria2.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        childCriteria2.setValues(Arrays.asList('0'))
        childCriteria2.setJoinOperator(DBObjMapper.OPERATOR_OR)
        childCriteria2.setComposite(true)
        childCriteria2.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(childCriteria3)))

        Criteria testChildCriteria2 = criteriaParser.getChildCriteria(checkStatement, childCriteriaString2)

        assertEquals(childCriteria2.getType(), testChildCriteria2.getType())
        assertEquals(childCriteria2.getFieldName(), testChildCriteria2.getFieldName())
        assertEquals(childCriteria2.getOperation(), testChildCriteria2.getOperation())
        assertEquals(childCriteria2.getValueType(), testChildCriteria2.getValueType())
        assertEquals(childCriteria2.getValues(), testChildCriteria2.getValues())
        assertEquals(childCriteria2.getJoinOperator(), testChildCriteria2.getJoinOperator())
        assertEquals(childCriteria2.isComposite(), testChildCriteria2.isComposite())

        Criteria childCriteria1 = new Criteria()
        childCriteria1.setType("CHECK")
        childCriteria1.setFieldName("school_support_ind")
        childCriteria1.setOperation(DBObjMapper.SPECIAL_OPERATOR_IS)
        childCriteria1.setValueType("")
        childCriteria1.setValues(Arrays.asList('null'))
        childCriteria1.setJoinOperator("")
        childCriteria1.setComposite(true)
        childCriteria1.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(childCriteria2)))

        Criteria testChildCriteria1 = criteriaParser.getChildCriteria(checkStatement, childCriteriaString1)

        assertEquals(childCriteria1.getType(), testChildCriteria1.getType())
        assertEquals(childCriteria1.getFieldName(), testChildCriteria1.getFieldName())
        assertEquals(childCriteria1.getOperation(), testChildCriteria1.getOperation())
        assertEquals(childCriteria1.getValueType(), testChildCriteria1.getValueType())
        assertEquals(childCriteria1.getValues(), testChildCriteria1.getValues())
        assertEquals(childCriteria1.getJoinOperator(), testChildCriteria1.getJoinOperator())
        assertEquals(childCriteria1.isComposite(), testChildCriteria1.isComposite())

        Criteria outterCriteria = new Criteria()
        outterCriteria.setType("CHECKWRAPPER")
        outterCriteria.setComposite(false)
        outterCriteria.setJoinCriteria(new LinkedList<Criteria>(Arrays.asList(childCriteria1, childCriteria2, childCriteria3)))

        Criteria testCriteria = criteriaParser.parse(sqlStatment)

        assertEquals(outterCriteria.getType(), testCriteria.getType())
        assertEquals(outterCriteria.getJoinCriteria().size(), testCriteria.getJoinCriteria().size())
        assertEquals(outterCriteria.isComposite(), testCriteria.isComposite())

        Criteria testChildCriteria = testCriteria.getJoinCriteria().getFirst()
        for (Criteria childCriteria : outterCriteria.getJoinCriteria()){
            assertEquals(childCriteria.getType(), testChildCriteria.getType())
            assertEquals(childCriteria.getFieldName(), testChildCriteria.getFieldName())
            assertEquals(childCriteria.getOperation(), testChildCriteria.getOperation())
            assertEquals(childCriteria.getValueType(), testChildCriteria.getValueType())
            assertEquals(childCriteria.getValues(), testChildCriteria.getValues())
            assertEquals(childCriteria.getJoinOperator(), testChildCriteria.getJoinOperator())
            assertEquals(childCriteria.isComposite(), testChildCriteria.isComposite())
            if (childCriteria.getJoinCriteria() != null && testChildCriteria.getJoinCriteria() != null){
                assertEquals(childCriteria.getJoinCriteria().size(), testChildCriteria.getJoinCriteria().size())
                testChildCriteria = testChildCriteria.getJoinCriteria().getFirst()
            }
        }
    }

    @Test
    void shouldReturnComplexCriteria(){
        String sql = 'ALTER TABLE dbo.QFN_EXEMPTION_ITEM ' +
                'ADD CONSTRAINT CHK_QFN_EXMPTION_ITEM_REF ' +
                'CHECK ((qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or ' +
                '(qfn_version_id is not null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or ' +
                '(qfn_version_id is null and std_version_id is not null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is null) or ' +
                '(qfn_version_id is null and std_version_id is null and cfn_catg_id is not null and qfn_rule_id is null and excluded_exemption_id is null) or ' +
                '(qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is not null and excluded_exemption_id is null) or ' +
                '(qfn_version_id is null and std_version_id is null and cfn_catg_id is null and qfn_rule_id is null and excluded_exemption_id is not null))'

        Criteria testCriteria = criteriaParser.parse(sql)

        assertEquals("CHECKWRAPPER", testCriteria.getType())
        assertEquals(6, testCriteria.getJoinCriteria().size())
        assertEquals(false, testCriteria.isComposite())

        for (Criteria testChildCriteria : testCriteria.getJoinCriteria()){
            assertEquals("CHECKWRAPPER", testChildCriteria.getType())
            if (testChildCriteria.getJoinCriteria() != null){
                assertEquals(5, testChildCriteria.getJoinCriteria().size())

                for (Criteria testChildChildCriteria : testChildCriteria.getJoinCriteria()){
                    assertEquals("CHECK", testChildChildCriteria.getType())
                    assertFalse(testChildChildCriteria.getFieldName().isEmpty())
                    System.out.println("FieldName: " + testChildChildCriteria.getFieldName())
                    System.out.println("Operation: " + testChildChildCriteria.getOperation())
                    System.out.println("ValueType: " + testChildChildCriteria.getValueType())
                    System.out.println("Values: " + testChildChildCriteria.getValues())
                    System.out.println("JoinOperator: " + testChildChildCriteria.getJoinOperator())
                    System.out.println("IsComposite: " + testChildChildCriteria.isComposite())

                    if (testChildChildCriteria.getJoinCriteria() != null){
                        System.out.println("JoinCriteria size: " + testChildChildCriteria.getJoinCriteria().size())
                        assertEquals(1, testChildChildCriteria.getJoinCriteria().size())
                    }
                }
            }
        }

    }

    @Test
    void shouldReturnChildCriteriaWithIn(){
        // ALTER TABLE dbo.CFN_CATEGORY ADD CONSTRAINT CHK_CFN_CATEGORY_BSAS_ACCR_LVL
        //        CHECK (bsas_accreditation_level in ('01','02','03','04'))
        String checkStatement = "(bsas_accreditation_level in ('01','02','03','04'))"
        String childCriteriaString = "bsas_accreditation_level in ('01','02','03','04')"

        Criteria childCriteria = new Criteria()
        childCriteria.setType("CHECK")
        childCriteria.setFieldName("bsas_accreditation_level")
        childCriteria.setOperation("IN")
        childCriteria.setValueType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        childCriteria.setValues(Arrays.asList("'01'","'02'","'03'","'04'"))
        childCriteria.setComposite(false)

        Criteria testChildCriteria = criteriaParser.getChildCriteria(checkStatement, childCriteriaString)

        assertEquals(childCriteria.getType(), testChildCriteria.getType())
        assertEquals(childCriteria.getFieldName(), testChildCriteria.getFieldName())
        assertEquals(childCriteria.getOperation(), testChildCriteria.getOperation())
        assertEquals(childCriteria.getValueType(), testChildCriteria.getValueType())
        assertEquals(childCriteria.getValues(), testChildCriteria.getValues())
        assertEquals(childCriteria.isComposite(), testChildCriteria.isComposite())
    }

    @Test
    void shouldReturnChildCriteriaWithBetween(){
//        ALTER TABLE dbo.MARKER_CODE
//        ADD CONSTRAINT MARKER_COD_assign_233413220
//        CHECK (assigned_marker_code between 1000 and 9999)

        String checkStatement = "(assigned_marker_code between 1000 and 9999)"
        String childCriteriaString = "assigned_marker_code between 1000 and 9999"

        Criteria childCriteria = new Criteria()
        childCriteria.setType("CHECK")
        childCriteria.setFieldName("assigned_marker_code")
        childCriteria.setOperation("BETWEEN")
        childCriteria.setValueType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        childCriteria.setValues(Arrays.asList('1000', '9999'))
        childCriteria.setComposite(false)

        Criteria testChildCriteria = criteriaParser.getChildCriteria(checkStatement, childCriteriaString)

        assertEquals(childCriteria.getType(), testChildCriteria.getType())
        assertEquals(childCriteria.getFieldName(), testChildCriteria.getFieldName())
        assertEquals(childCriteria.getOperation(), testChildCriteria.getOperation())
        assertEquals(childCriteria.getValueType(), testChildCriteria.getValueType())
        assertEquals(childCriteria.getValues(), testChildCriteria.getValues())
        assertEquals(childCriteria.isComposite(), testChildCriteria.isComposite())
    }
}
