package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Test

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.db.SybaseOperator}.
 */
class SybaseOperatorTest {

    SybaseOperator SybaseOperatorTestObj

    @Before
    void setup() {
        SybaseOperatorTestObj = new SybaseOperator()
    }

    @Test
    void detectNoNameChangeWhenLineHasNoName() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/01-eqa_prod_user_datatypes_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitUserDatatypes(testFile, testDestDir)
    }

}
