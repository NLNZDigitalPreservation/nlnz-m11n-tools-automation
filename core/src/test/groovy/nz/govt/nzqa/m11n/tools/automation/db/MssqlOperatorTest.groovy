package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Test
import nz.govt.nzqa.m11n.tools.automation.file.FilenameExtractor

import static org.junit.Assert.assertEquals


/**
 * Tests the {@link MssqlOperator}.
 */
class MssqlOperatorTest {

    MssqlOperator mssqlMapperTestObj
    FilenameExtractor filenameExtractor

    @Before
    void setup() {
        mssqlMapperTestObj = new MssqlOperator()
    }

//    @Test
    void shouldExtractCorrectSybaseName() {
        String testName = 'splitTables-0-dbo.ACADEMIC_YEAR.sql'
        assertEquals("Should return camel cased sybase split sql name", "Tables", mssqlMapperTestObj.getSqlTypeFromSybaseSplitSqlName(testName))
    }

//    @Test
    void shouldReturnListOfSqlsInAGivenDir(){
        String testDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitTables/'
        assertEquals("Should return list of sqls in a given directory", 676, mssqlMapperTestObj.getSqlScriptsInDir(testDir).size())
    }

//    @Test
    void shouldGenerateTwoTables(){
        String[] sybaseSqlFolderList = ['splitTables'] //getSybaseSplitFolders

        String destinationDir = "/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts"

        new File(destinationDir).mkdirs()

        for (String sybaseSqlFolderName : sybaseSqlFolderList) {
            String sqlType = filenameExtractor.getSqlTypeFromSybaseFolderName(sybaseSqlFolderName)
            String methodToCall = "generate" + sqlType

            String[] sqlList = ['splitTables-0-dbo.ACADEMIC_YEAR.sql', 'splitTables-1-dbo.ACADEMIC_YEAR_TYPE.sql']
            mssqlMapperTestObj."$methodToCall"(sqlList, destinationDir)
        }
    }

//    @Test
    void shouldGenerate311DropTriggerStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitTriggers'
        mssqlMapperTestObj.generateDropTriggers(splitFolderDir, destinationDir)
    }

    @Test
    void shouldGenerate19241DropSPStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
    String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitSP'
    mssqlMapperTestObj.generateDropSP(splitFolderDir, destinationDir)
}

    @Test
    void shouldGenerate11DropCheckConstraintsStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitCheckConstraints'
        mssqlMapperTestObj.generateDropCheckConstraints(splitFolderDir, destinationDir)
    }

    @Test
    void shouldGenerate1088DropForeignKeysStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitForeignKeys'
        mssqlMapperTestObj.generateDropForeignKeys(splitFolderDir, destinationDir)
    }

//    @Test
    void shouldGenerateOneMssqlScript(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts'
        mssqlMapperTestObj.generateMssqlScript(splitFolderDir, destinationDir)
    }
}
