package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertFalse
import static org.junit.Assert.assertTrue
import  static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.db.LineChecker}.
 */
class LineCheckerTest {

    LineChecker lineCheckerTestObj

    @Before
    void setup() {
        lineCheckerTestObj = new LineChecker()
    }

    @Test
    void detectNoNameChangeWhenLineHasNoName() {
        String lineName = ''
        String currentEntityNameTest = ''
        assertFalse("Detect no name change correctly when line has no name",  lineCheckerTestObj.entityNameHasChanged(lineName, currentEntityNameTest))
    }

    @Test
    void detectNameChangeWhenLineHasNewName() {
        String lineName = 'nsn'
        String currentEntityNameTest = ''
        assertTrue("Detect name change correctly with new name",  lineCheckerTestObj.entityNameHasChanged(lineName, currentEntityNameTest))
    }

    @Test
    void extractLineNameCorrectlyWhenLineHasNoName() {
        String lineTest = "GO"
        assertEquals("Extract line name correctly", '', lineCheckerTestObj.getEntityNameFromLine(lineTest))
    }

    @Test
    void extractLineNameCorrectlyWhenLineHasName() {
        String lineTest = "IF EXISTS (SELECT * FROM systypes WHERE name='wwwaddr')"
        assertEquals("Extract line name correctly", 'wwwaddr', lineCheckerTestObj.getEntityNameFromLine(lineTest))
    }

    @Test
    void extractLineNameCorrectlyWhenLineHasName2() {
        String lineTest = "IF OBJECT_ID('dbo.default_n') IS NOT NULL"
        assertEquals("Extract line name correctly 2", 'dbo.default_n', lineCheckerTestObj.getEntityNameFromLine(lineTest))
    }

    @Test
    void extractLineNameCorrectlyWhenLineHasName3() {
        String lineTest = "IF OBJECT_ID('default_n') IS NOT NULL"
        assertEquals("Extract line name correctly 3", 'default_n', lineCheckerTestObj.getEntityNameFromLine(lineTest))
    }

    @Test
    void extractLineNameCorrectlyWhenLineHasName4() {
        String lineTest = "CREATE DEFAULT dbo.Default_1 AS 0"
        assertEquals("Extract line name correctly 4", 'dbo.Default_1', lineCheckerTestObj.getEntityNameFromLine(lineTest))
    }

}
