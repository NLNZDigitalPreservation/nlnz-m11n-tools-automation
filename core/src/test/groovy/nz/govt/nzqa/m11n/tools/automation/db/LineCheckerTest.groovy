package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertFalse
import static org.junit.Assert.assertTrue

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
        String lineTest = "GO"
        String currentEntityNameTest = ''
        assertTrue("1. Detect no name change correctly when line has no name",  lineCheckerTestObj.entityNameHasChanged(lineTest, currentEntityNameTest))
    }

    @Test
    void detectNameChangeWhenLineHasNewName() {
        String lineTest = "IF EXISTS (SELECT * FROM systypes WHERE name='nsn')"
        String currentEntityNameTest = ''
        assertFalse("2. Detect name change correctly with new name",  lineCheckerTestObj.entityNameHasChanged(lineTest, currentEntityNameTest))
    }

    @Test
    void detectNoNameChangeWhenLineHasSameName() {
        String lineTest = "IF EXISTS (SELECT * FROM systypes WHERE name='number_2')"
        String currentEntityNameTest = 'number_2'
        assertTrue("3. Detect no name change correctly",  lineCheckerTestObj.entityNameHasChanged(lineTest, currentEntityNameTest))
    }
}
