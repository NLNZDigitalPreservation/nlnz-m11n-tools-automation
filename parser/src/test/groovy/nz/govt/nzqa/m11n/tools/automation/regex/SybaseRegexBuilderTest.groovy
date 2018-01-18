package nz.govt.nzqa.m11n.tools.automation.regex

import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.ParserUtil
import org.junit.Before
import org.junit.Test

import java.nio.file.Files
import java.nio.file.Paths

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertTrue

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder}.
 */

class SybaseRegexBuilderTest {

    SybaseRegexBuilder regexBuilder

    @Before
    void setup() {
        regexBuilder = new SybaseRegexBuilder()
    }

    @Test
    void shouldReturnCorrectRegexStringForAttributeType(){
        String regexString = "(?i)(CREATE|ADD|DELETE|UPDATE) (\\S+) (\\S+) \\((.*)\\)"
        String testRegexString = regexBuilder.buildAttributeRegex("Type")
        assertEquals(regexString, testRegexString)
    }

}
