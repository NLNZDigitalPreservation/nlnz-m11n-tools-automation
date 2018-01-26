package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Constraint
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser}.
 */

class ConstraintParserTest {

    ConstraintParser constraintParser

    @Before
    void setup() {
        constraintParser = new ConstraintParser()
    }

    @Test
    void shouldReturnConstraint() {

        String constraintString = 'CONSTRAINT PK_ACADEMIC_YEAR PRIMARY KEY CLUSTERED (academic_year)'
        Constraint constraint = new Constraint()
        constraint.setType('PK')
        constraint.setName('PK_ACADEMIC_YEAR')
        constraint.setSubType('CLUSTERED')
        constraint.setFields(Arrays.asList('academic_year'))

        Constraint generatedConstraint = constraintParser.parse(constraintString)

        assertEquals(constraint.getType(), generatedConstraint.getType())
        assertEquals(constraint.getName(), generatedConstraint.getName())
        assertEquals(constraint.getSubType(), generatedConstraint.getSubType())
//        assertEquals(constraint.getAction(), generatedConstraint.getAction())
        assertEquals(constraint.getFields(), generatedConstraint.getFields())
//        assertEquals(constraint.getTableName(), generatedConstraint.getTableName())
//        assertEquals(constraint.setReferenceTableName(), generatedConstraint.setReferenceTableName())
//        assertEquals(constraint.setReferenceFields(), generatedConstraint.setReferenceFields())
    }

    @Test
    void shouldReturnConstraintWithFK() {

        String constraintString = 'ALTER TABLE dbo.ACRD_INHERITANCE_MAP ' +
                'ADD CONSTRAINT FK_ACRD_INHERIT_MAP_PROVIDER_1 ' +
                'FOREIGN KEY (inheriting_moe_provider_id,inheriting_location) ' +
                'REFERENCES dbo.PROVIDER (moe_provider_id,location)'
        Constraint constraint = new Constraint()
        constraint.setType('FK')
        constraint.setName('FK_ACRD_INHERIT_MAP_PROVIDER_1')
        constraint.setAction('ADD')
        constraint.setFields(Arrays.asList('inheriting_moe_provider_id','inheriting_location'))
        constraint.setTableName('ACRD_INHERITANCE_MAP')
        constraint.setReferenceTableName('PROVIDER')
        constraint.setReferenceFields(Arrays.asList('moe_provider_id','location'))

        Constraint generatedConstraint = constraintParser.parse(constraintString)

        assertEquals(constraint.getType(), generatedConstraint.getType())
        assertEquals(constraint.getName(), generatedConstraint.getName())
        assertEquals(constraint.getAction(), generatedConstraint.getAction())
//        assertEquals(constraint.getSubType(), generatedConstraint.getSubType())
        assertEquals(constraint.getFields(), generatedConstraint.getFields())
        assertEquals(constraint.getTableName(), generatedConstraint.getTableName())
        assertEquals(constraint.setReferenceTableName(), generatedConstraint.setReferenceTableName())
        assertEquals(constraint.setReferenceFields(), generatedConstraint.setReferenceFields())
    }

    @Test
    void shouldReturnConstraintWithUniqueNonclustered() {

        String constraintString = 'ALTER TABLE dbo.ASSESS_SESSION_RELATIONSHIP ' +
                'ADD CONSTRAINT AK_ASSESS_SESSION_RELATIONSHIP ' +
                'UNIQUE NONCLUSTERED (assessment_session_id,related_assessment_session_id,assessment_session_rel_type)'
        Constraint constraint = new Constraint()
        constraint.setType('UNIQUE')
        constraint.setName('AK_ASSESS_SESSION_RELATIONSHIP')
        constraint.setAction('ADD')
        constraint.setSubType('NONCLUSTERED')
        constraint.setFields(Arrays.asList('assessment_session_id','related_assessment_session_id','assessment_session_rel_type'))
        constraint.setTableName('ASSESS_SESSION_RELATIONSHIP')

        Constraint generatedConstraint = constraintParser.parse(constraintString)

        assertEquals(constraint.getType(), generatedConstraint.getType())
        assertEquals(constraint.getName(), generatedConstraint.getName())
        assertEquals(constraint.getSubType(), generatedConstraint.getSubType())
        assertEquals(constraint.getAction(), generatedConstraint.getAction())
        assertEquals(constraint.getFields(), generatedConstraint.getFields())
        assertEquals(constraint.getTableName(), generatedConstraint.getTableName())
//        assertEquals(constraint.setReferenceTableName(), generatedConstraint.setReferenceTableName())
//        assertEquals(constraint.setReferenceFields(), generatedConstraint.setReferenceFields())
    }

    @Test
    void shouldReturnConstraintWithDrop(){

        String constraintString = 'ALTER TABLE dbo.ASSESS_SESSION_RELATIONSHIP ' +
                'DROP CONSTRAINT AK_ASSESS_SESSION_RELATIONSHIP'
        Constraint constraint = new Constraint()
        constraint.setType('')
        constraint.setName('AK_ASSESS_SESSION_RELATIONSHIP')
        constraint.setAction('DROP')
        constraint.setSubType('')
        constraint.setFields(Arrays.asList(''))
        constraint.setTableName('ASSESS_SESSION_RELATIONSHIP')

        Constraint generatedConstraint = constraintParser.parse(constraintString)

        assertEquals(constraint.getType(), generatedConstraint.getType())
        assertEquals(constraint.getName(), generatedConstraint.getName())
        assertEquals(constraint.getSubType(), generatedConstraint.getSubType())
        assertEquals(constraint.getAction(), generatedConstraint.getAction())
        assertEquals(constraint.getFields(), generatedConstraint.getFields())
        assertEquals(constraint.getTableName(), generatedConstraint.getTableName())
//        assertEquals(constraint.setReferenceTableName(), generatedConstraint.setReferenceTableName())
//        assertEquals(constraint.setReferenceFields(), generatedConstraint.setReferenceFields())

    }

    @Test
    void shouldReturnConstraintWithCheckConstraints(){

        String constraintString = "ALTER TABLE dbo.CFN_CATEGORY " +
                "ADD CONSTRAINT CHK_CFN_CATEGORY_BSAS_ACCR_LVL " +
                "CHECK (bsas_accreditation_level in ('01','02','03','04'))"
        Constraint constraint = new Constraint()
        constraint.setType('')
        constraint.setName('AK_ASSESS_SESSION_RELATIONSHIP')
        constraint.setAction('DROP')
        constraint.setSubType('')
        constraint.setFields(Arrays.asList(''))
        constraint.setTableName('ASSESS_SESSION_RELATIONSHIP')

        Constraint generatedConstraint = constraintParser.parse(constraintString)

        assertEquals(constraint.getType(), generatedConstraint.getType())
//        assertEquals(constraint.getName(), generatedConstraint.getName())
//        assertEquals(constraint.getSubType(), generatedConstraint.getSubType())
//        assertEquals(constraint.getAction(), generatedConstraint.getAction())
//        assertEquals(constraint.getFields(), generatedConstraint.getFields())
//        assertEquals(constraint.getTableName(), generatedConstraint.getTableName())
//        assertEquals(constraint.setReferenceTableName(), generatedConstraint.setReferenceTableName())
//        assertEquals(constraint.setReferenceFields(), generatedConstraint.setReferenceFields())

    }
}
