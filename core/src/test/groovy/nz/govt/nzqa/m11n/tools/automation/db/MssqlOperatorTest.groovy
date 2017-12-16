package nz.govt.nzqa.m11n.tools.automation.db

import org.junit.Before
import org.junit.Ignore
import org.junit.Test
import nz.govt.nzqa.m11n.tools.automation.file.FilenameExtractor

import static org.junit.Assert.assertEquals


/**
 * Tests the {@link MssqlOperator}.
 */
@Ignore
class MssqlOperatorTest {

    MssqlOperator mssqlMapperTestObj
    FilenameExtractor filenameExtractor

    @Before
    void setup() {
        mssqlMapperTestObj = new MssqlOperator()
        filenameExtractor = new FilenameExtractor()
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

    @Test
    void shouldGenerate311DropTriggerStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/08-eqa_prod_triggers_171106.sql'
        mssqlMapperTestObj.generateDropTriggers( sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate19241DropSPStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/13-eqa_prod_SP_171106.sql'
        mssqlMapperTestObj.generateDropSP(sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate11DropCheckConstraintsStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/10-eqa_prod_check_constraints_171106.sql'
        mssqlMapperTestObj.generateDropCheckConstraints(sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate1088DropForeignKeysStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/11-eqa_prod_foreign_keys_171106.sql'
        mssqlMapperTestObj.generateDropForeignKeys(sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate598DropIndicesStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/07a-eqa_prod_indices_171214.sql'
        mssqlMapperTestObj.generateDropIndices(sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate85DropViewsStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String sqlFilename = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/12-eqa_prod_views_171106.sql'
        mssqlMapperTestObj.generateDropViews(sqlFilename, destinationDir)
    }

    @Test
    void shouldGenerate676DropTablesStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts/dropTables'
        new File(destinationDir).mkdir()

        String sqlInputFileDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitTables'
        mssqlMapperTestObj.generateDropTables(sqlInputFileDir, destinationDir)
    }

    @Test
    void shouldGenerate44DropUserDatatypesStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts/dropUserDatatypes'
        new File(destinationDir).mkdir()

        String sqlInputFileDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitUserDatatypes'
        String[] sqlFilenameList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFileDir, "drop")

        for (String sqlFilename : sqlFilenameList){
            mssqlMapperTestObj.generateDropUserDatatypes(sqlInputFileDir + File.separator + sqlFilename, destinationDir)
        }

    }

    @Test
    void shouldGenerate1DropRuleStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts/dropRules'
        new File(destinationDir).mkdir()

        String sqlInputFileDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitRules'
        String[] sqlFilenameList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFileDir, "drop")

        for (String sqlFilename : sqlFilenameList){
            mssqlMapperTestObj.generateDropRules(sqlInputFileDir + File.separator + sqlFilename, destinationDir)
        }

    }

    @Test
    void shouldGenerate15DropDefaultsStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts/dropDefaults'
        new File(destinationDir).mkdir()

        String sqlInputFileDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitDefaults'
        String[] sqlFilenameList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFileDir, "drop")

        for (String sqlFilename : sqlFilenameList){
            mssqlMapperTestObj.generateDropDefaults(sqlInputFileDir + File.separator + sqlFilename, destinationDir)
        }

    }

    @Test
    void shouldGenerate23DropUsersStatements(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts/dropUsers'
        new File(destinationDir).mkdir()

        String sqlInputFileDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts/splitUsers'
        mssqlMapperTestObj.generateDropUsers(sqlInputFileDir, destinationDir)
    }

//    @Test
    void shouldGenerateOneMssqlScript(){
        String destinationDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/mssqlScripts'
        String splitFolderDir = '/home/amyl/git/modernisation/eqa-split/m11n-tools-automation/core/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/db/resource/sybaseScripts'
        mssqlMapperTestObj.generateMssqlScript(splitFolderDir, destinationDir)
    }
}
