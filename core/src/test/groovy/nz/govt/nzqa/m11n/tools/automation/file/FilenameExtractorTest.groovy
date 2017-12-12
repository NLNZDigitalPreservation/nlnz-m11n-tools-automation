package nz.govt.nzqa.m11n.tools.automation.file

import org.junit.Test

/**
 * Tests {@link nz.govt.nzqa.eqa.tools.build.automation.file.FilenameExtractor}.
 */
public class FilenameExtractorTest {

    FilenameExtractor filenameExtractorTestObj = new FilenameExtractor()

    // This test should only be run after sybase sql scripts have been split
//    @Test
    void testSort(){
        String testDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitSP"
        String [] testFileList = filenameExtractorTestObj.getListOfSplitSqlScriptsInDir(testDir)
        System.out.println("TestFileList:" + testFileList)

//        for (int i = 0; i< testFileList.size(); i ++) {
//
//            if (testFileList[i].equalsIgnoreCase("splitTables-245-dbo.IR330.sql")) {
//                System.out.println("TestFileList 245 index:" + i)
//                System.out.println("TestFileList 245 index before:" + testFileList[i - 1])
//                System.out.println("TestFileList 245 index after:" + testFileList[i + 1])
//            }
//        }
    }

}