package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import org.junit.Before
import org.junit.Test

import java.nio.file.Files
import java.nio.file.Paths

import static org.junit.Assert.assertTrue
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link ParserUtil}.
 */

class ParserUtilTest {

    ParserUtil parserUtil

    @Before
    void setup() {
        parserUtil = new ParserUtil()
    }

    @Test
    void shouldReturnOneStatement() {
        String statement = 'USE eqa_prod'
        List<String> statements = parserUtil.getStatementsFromFile(new File('parser/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileUseSchema.sql'))
        assertTrue('Return exactly one statement', statements.size() == 1)
        assertEquals('Return the correct statement', statement, statements.get(0))
    }

    @Test
    void shouldReturnTwoStatement() {
        List<String> expectedStatements = Files.readAllLines(Paths.get('parser/src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileCreateTable-expected.sql'))
        List<String> statements = parserUtil.getStatementsFromFile(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileCreateTable.sql'))

        System.out.println("Expected: " + expectedStatements)
        System.out.println("Actual: " + statements)

        assertEquals('Return ' + expectedStatements.size() +' statements', expectedStatements.size(), statements.size())

        for (int index = 0; index < expectedStatements.size(); index ++){
            assertEquals('Return the correct statement', expectedStatements.get(index).replaceAll(" ", ""), statements.get(index).replaceAll(" ", ""))
        }
    }

    @Test
    void shouldReturnCorrectParser() {

        String folderName = 'splitTables'
        Parser parser = parserUtil.getParser(folderName)
        assertEquals(parser.class, EntityParser.class)
    }

    @Test
    void shouldExtractFirstWrapperString(){
        String workingString = '((marker_allocation_group_id is null and marker_panel_ag_id is not null) or ' +
                '(marker_allocation_group_id is not null and marker_panel_ag_id is null))'
        String wrapperString = '(marker_allocation_group_id is null and marker_panel_ag_id is not null)'
        String testWrapperString = parserUtil.getWrapperString(workingString)
        assertEquals(wrapperString, testWrapperString)

        //([wrapper1] or (marker_allocation_group_id is not null and marker_panel_ag_id is null))
        String workingString2 = workingString.replace(wrapperString, "[wrapper1]")
        String wrapperString2 = '(marker_allocation_group_id is not null and marker_panel_ag_id is null)'
        String testWrapperString2 = parserUtil.getWrapperString(workingString2)
        assertEquals(wrapperString2, testWrapperString2)

        //([wrapper1] or [wrapper2])
        String workingString3 = workingString2.replace(wrapperString2, "[wrapper2]")
        String wrapperString3 = '([wrapper1] or [wrapper2])'
        String testWrapperString3 = parserUtil.getWrapperString(workingString3)
        assertEquals(wrapperString3, testWrapperString3)

    }

}
