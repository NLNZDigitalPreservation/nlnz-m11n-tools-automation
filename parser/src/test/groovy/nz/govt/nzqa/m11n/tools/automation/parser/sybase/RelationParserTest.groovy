package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Relation
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser}.
 */

class RelationParserTest {

    RelationParser relationParser

    @Before
    void setup() {
        relationParser = new RelationParser()
    }

    @Test
    void shouldParseGrantStatementAndReturnCorrectRelation() {

        String relationString1 = 'GRANT REFERENCES ON dbo.ACADEMIC_YEAR TO eqa_user'
        String relationString2 = 'GRANT DELETE STATISTICS ON dbo.ACADEMIC_YEAR TO eqa_user'
        String relationString3 = 'GRANT TRANSFER TABLE ON dbo.ACADEMIC_YEAR TO eqa_user'

        Relation relation1 = new Relation()
        relation1.setAction('REFERENCES')
        relation1.setType('GRANT')
        relation1.setGrantObjectDB('dbo')
        relation1.setGrantObjectName('ACADEMIC_YEAR')
        relation1.setGrantTo('eqa_user')

        Relation relation2 = new Relation()
        relation2.setAction('DELETE STATISTICS')
        relation2.setType('GRANT')
        relation2.setGrantObjectDB('dbo')
        relation2.setGrantObjectName('ACADEMIC_YEAR')
        relation2.setGrantTo('eqa_user')

        Relation relation3 = new Relation()
        relation3.setAction('TRANSFER TABLE')
        relation3.setType('GRANT')
        relation3.setGrantObjectDB('dbo')
        relation3.setGrantObjectName('ACADEMIC_YEAR')
        relation3.setGrantTo('eqa_user')

        Relation generatedRelation1 = relationParser.parse(relationString1)
        Relation generatedRelation2 = relationParser.parse(relationString2)
        Relation generatedRelation3 = relationParser.parse(relationString3)

        assertEquals(relation1.getType(), generatedRelation1.getType())
//        assertEquals(relation1.getName(), generatedRelation1.getName())
        assertEquals(relation1.getAction(), generatedRelation1.getAction())
        assertEquals(relation1.getGrantTo(), generatedRelation1.getGrantTo())
        assertEquals(relation1.getGrantObjectDB(), generatedRelation1.getGrantObjectDB())
        assertEquals(relation1.getGrantObjectName(), generatedRelation1.getGrantObjectName())
//        assertEquals(relation1.getGrantSubObjects(), generatedRelation1.getGrantSubObjects())

        assertEquals(relation2.getType(), generatedRelation2.getType())
//        assertEquals(relation2.getName(), generatedRelation2.getName())
        assertEquals(relation2.getAction(), generatedRelation2.getAction())
        assertEquals(relation2.getGrantTo(), generatedRelation2.getGrantTo())
        assertEquals(relation2.getGrantObjectDB(), generatedRelation2.getGrantObjectDB())
        assertEquals(relation2.getGrantObjectName(), generatedRelation2.getGrantObjectName())
//        assertEquals(relation2.getGrantSubObjects(), generatedRelation2.getGrantSubObjects())

        assertEquals(relation3.getType(), generatedRelation3.getType())
//        assertEquals(relation3.getName(), generatedRelation3.getName())
        assertEquals(relation3.getAction(), generatedRelation3.getAction())
        assertEquals(relation3.getGrantTo(), generatedRelation3.getGrantTo())
        assertEquals(relation3.getGrantObjectDB(), generatedRelation3.getGrantObjectDB())
        assertEquals(relation3.getGrantObjectName(), generatedRelation3.getGrantObjectName())
//        assertEquals(relation3.getGrantSubObjects(), generatedRelation3.getGrantSubObjects())
    }

    @Test
    void shouldReturnCorrectSubObjectList() {
        String relationString = 'GRANT SELECT ON dbo.sysobjects(name,id,uid,type,userstat,sysstat) TO public'
        List<String> subObjects = Arrays.asList('name','id','uid','type','userstat','sysstat')
        List<String> testSubObjects = relationParser.getGrantSubObjects(relationString)

        assertEquals(subObjects, testSubObjects)
    }

}
