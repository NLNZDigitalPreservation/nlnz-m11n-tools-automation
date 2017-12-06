package groovy.nz.govt.nzqa.m11n.tools.automation.db

import nz.govt.nzqa.m11n.tools.automation.db.SybaseOperator
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


    /**
     * Expect 5 drop statements and 5 create statements
     */
//    @Test
    void testSplitDefaults() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/00-eqa_prod_defaults_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitDefaults(testFile, testDestDir)
    }

    /**
     * Expect 44 drop statements and 44 add statements
     */
//    @Test
    void testSplitUserDatatypes() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/01-eqa_prod_user_datatypes_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitUserDatatypes(testFile, testDestDir)
    }

    /**
     * Expect 3 add groups
     */
//    @Test
    void testSplitGroups() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/03-eqa_prod_groups_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitGroups(testFile, testDestDir)
    }

    /**
     * Expect 23 add users
     */
//    @Test
    void testSplitUsers() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/04-eqa_prod_users_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitUsers(testFile, testDestDir)
    }

    /**
     * Expect 1 drop rule and 1 add rule
     */
//    @Test
    void testSplitRules() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/05-eqa_prod_rules_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitRules(testFile, testDestDir)
    }

    /**
     * Expect 2 create messages
     */
//    @Test
    void testSplitUserMessages() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/06-eqa_prod_user_messages_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitUserMessages(testFile, testDestDir)
    }

    /**
     * Expect 676 tables
     */
//    @Test
    void testSplitTables() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/07-eqa_prod_tables_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitTables(testFile, testDestDir)
    }

    /**
     * Expect 311 drop and create triggers
     */
//    @Test
    void testSplitTriggers() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/08-eqa_prod_triggers_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitTriggers(testFile, testDestDir)
    }

    /**
     * Expect 31 alter table add unique key contraint statements
     */
//    @Test
    void testSplitUniqueKeys() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/09-eqa_prod_unique_keys_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitUniqueKeys(testFile, testDestDir)
    }


    /**
     * Expect 11 alter table add unique key contraint and check their values
     */
//    @Test
    void testSplitCheckConstraints() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/10-eqa_prod_check_constraints_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitCheckConstraints(testFile, testDestDir)
    }

    /**
     * Expect 1088 alter table add foreign key contraint statements
     */
//    @Test
    void testSplitForeignKeys() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/11-eqa_prod_foreign_keys_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitForeignKeys(testFile, testDestDir)
    }


    /**
     * Expect 85 drop and create views
     */
//    @Test
    void testSplitViews() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/12-eqa_prod_views_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitViews(testFile, testDestDir)
    }

    /**
     * Expect 256 drop and 1811 create procedures
     */
    @Test
    void testSplitSP() {
        String testFileDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/13-eqa_prod_SP_171106.sql"
        File testFile = new File(testFileDir)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/"
        sybaseOperatorTestObj.splitSP(testFile, testDestDir)
    }



}
