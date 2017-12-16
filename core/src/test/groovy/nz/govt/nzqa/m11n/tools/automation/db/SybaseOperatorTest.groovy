package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Ignore
import org.junit.Test

import  static org.junit.Assert.assertEquals
import  static org.junit.Assert.assertTrue

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.db.SybaseOperator}.
 */
@Ignore
class SybaseOperatorTest {

    SybaseOperator SybaseOperatorTestObj

    @Before
    void setup() {
        SybaseOperatorTestObj = new SybaseOperator()
    }

    @Test
    void shouldExtractCorrectSybaseName() {
        String testName = '00-eqa_prod_defaults_171106.sql'

        assertEquals("Should return camel cased sybase sql name", "Defaults", sybaseOperatorTestObj.getSqlTypeFromSybaseSqlName(testName))
    }

    /**
     * Expect 5 drop statements and 5 create statements
     */
    @Test
    void testSplitDefaults() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/00-eqa_prod_defaults_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitDefaults(testFile, testDestDir)
    }

    /**
     * Expect 44 drop statements and 44 add statements
     */
    @Test
    void testSplitUserDatatypes() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/01-eqa_prod_user_datatypes_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitUserDatatypes(testFile, testDestDir)
    }

    /**
     * Expect 3 add groups
     */
//    @Test
    void testSplitGroups() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/03-eqa_prod_groups_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitGroups(testFile, testDestDir)
    }

    /**
     * Expect 23 add users
     */
    @Test
    void testSplitUsers() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/04-eqa_prod_users_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitUsers(testFile, testDestDir)
    }

    /**
     * Expect 1 drop rule and 1 add rule
     */
    @Test
    void testSplitRules() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/05-eqa_prod_rules_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitRules(testFile, testDestDir)
    }

    /**
     * Expect 2 create messages
     */
//    @Test
    void testSplitUserMessages() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/06-eqa_prod_user_messages_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitUserMessages(testFile, testDestDir)
    }

    /**
     * Expect 676 tables
     */
//    @Test
    void testSplitTables() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/07-eqa_prod_tables_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitTables(testFile, testDestDir)
    }

    /**
     * Expect 598 indices
     * */
//    @Test
    void testSplitIndices() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/07a-eqa_prod_indices_171214.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitIndices(testFile, testDestDir)
    }



    /**
     * Expect 311 drop and create triggers
     */
//    @Test
    void testSplitTriggers() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/08-eqa_prod_triggers_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitTriggers(testFile, testDestDir)
    }

    /**
     * Expect 31 alter table add unique key contraint statements
     */
//    @Test
    void testSplitUniqueKeys() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/09-eqa_prod_unique_keys_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitUniqueKeys(testFile, testDestDir)
    }


    /**
     * Expect 11 alter table add unique key contraint and check their values
     */
//    @Test
    void testSplitCheckConstraints() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/10-eqa_prod_check_constraints_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitCheckConstraints(testFile, testDestDir)
    }

    /**
     * Expect 1088 alter table add foreign key contraint statements
     */
    @Test
    void testSplitForeignKeys() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/11-eqa_prod_foreign_keys_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitForeignKeys(testFile, testDestDir)
    }


    /**
     * Expect 85 drop and create views
     */
//    @Test
    void testSplitViews() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/12-eqa_prod_views_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitViews(testFile, testDestDir)
    }

    /**
     * Expect 1924 drop and 1941 create procedures
     */
//    @Test
    void testSplitSP() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/13-eqa_prod_SP_171106.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitSP(testFile, testDestDir)
    }

    /**
     * Split big Sybase script into 11 smaller sqls
     */
//    @Test
    void testSplitSybase() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/sybase_eqa_prod_161205_test.sql"
        File testFile = new File(testFileName)
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        sybaseOperatorTestObj.splitSybase(testFile, testDestDir)
    }

    /**
     * Testing files generated are the same as the original
     */

//    @Test
    void testSplitDefaultsCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/00-eqa_prod_defaults_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitDefaults(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitDefaults"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitDefaults() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitUserDatatypesCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/01-eqa_prod_user_datatypes_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitUserDatatypes(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitUserDatatypes"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitUserDatatypes() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitGroupsCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/03-eqa_prod_groups_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitGroups(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitGroups"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitGroups() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitUsersCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/04-eqa_prod_users_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitUsers(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitUsers"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitUsers() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitRulesCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/05-eqa_prod_rules_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitRules(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitRules"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitRules() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitUserMessagesCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/06-eqa_prod_user_messages_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitUserMessages(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitUserMessages"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitUserMessages() is identical to the original", linesDifferent.size()==0)
    }


//    @Test
    void testSplitTablesCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/07-eqa_prod_tables_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitTables(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitTables"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitTables() is identical to the original", linesDifferent.size()==0)
    }


//    @Test
    void testSplitTriggersCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/08-eqa_prod_triggers_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
//        sybaseOperatorTestObj.splitTriggers(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitTriggers"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitTriggers() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitUniqueKeysCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/09-eqa_prod_unique_keys_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitUniqueKeys(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitUniqueKeys"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitUniqueKeys() is identical to the original", linesDifferent.size()==0)
    }


//     @Test
    void testSplitCheckConstraintsCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/10-eqa_prod_check_constraints_171106.sql"
         String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
         File testFile = new File(testFileName)
         sybaseOperatorTestObj.splitCheckConstraints(testFile, testDestDir)

         String reconstructedFilePath =  testDestDir +  File.separator + "splitCheckConstraints"
         String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
         sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

         int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
         assertTrue("Reconstructed file from splitCheckConstraints() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitForeignKeysCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/11-eqa_prod_foreign_keys_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitForeignKeys(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitForeignKeys"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitForeignKeys() is identical to the original", linesDifferent.size()==0)
    }


//    @Test
    void testSplitViewsCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/12-eqa_prod_views_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"
        File testFile = new File(testFileName)
        sybaseOperatorTestObj.splitViews(testFile, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitViews"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitView() is identical to the original", linesDifferent.size()==0)
    }

//    @Test
    void testSplitSPCanReconstructToTheOriginal() {
        String testFileName = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/13-eqa_prod_SP_171106.sql"
        String testDestDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts"

// The code below encodes the original file (ISO-8859-1) in UTF 8
//        def testFile = new File(testFileName).getText('ISO-8859-1')
//        String encodedTestFileName = testDestDir + File.separator + '/13-eqa_prod_SP_171106.sql'
//        new File(encodedTestFileName).write(testFile,'utf-8')

        File encodedTestFile = new File(testFileName)
        sybaseOperatorTestObj.splitSP(testFileName, testDestDir)

        String reconstructedFilePath =  testDestDir +  File.separator + "splitSP"
        String reconstructedFileName = reconstructedFilePath +  File.separator + "reconstructed.sql"
        sybaseOperatorTestObj.reconstruct(reconstructedFilePath)

        int[] linesDifferent = sybaseOperatorTestObj.getLinesWhereReconstructedFileDiffersFromOriginal(testFileName, reconstructedFileName)
        assertTrue("Reconstructed file from splitSP() is identical to the original", linesDifferent.size()==0)
    }
}
