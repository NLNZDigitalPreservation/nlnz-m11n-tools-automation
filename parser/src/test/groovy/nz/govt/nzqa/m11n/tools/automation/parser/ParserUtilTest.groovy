package nz.govt.nzqa.m11n.tools.automation.parser

import org.junit.Before
import org.junit.Test

import java.nio.file.Files
import java.nio.file.Paths

import static org.junit.Assert.assertFalse
import static org.junit.Assert.assertTrue
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.ParserUtil}.
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
        List<String> statements = parserUtil.getStatementsFromFile(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileUseSchema.sql'))
        assertTrue('Return exactly one statement', statements.size() == 1)
        assertEquals('Return the correct statement', statement, statements.get(0))
    }

    @Test
    void shouldReturnTwoStatement() {
        List<String> expectedStatements = Files.readAllLines(Paths.get('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileCreateTable-expected.sql'))
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

}
