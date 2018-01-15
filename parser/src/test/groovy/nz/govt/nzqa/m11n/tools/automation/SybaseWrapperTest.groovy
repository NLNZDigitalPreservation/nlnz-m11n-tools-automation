package nz.govt.nzqa.m11n.tools.automation

import nz.govt.nzqa.m11n.tools.automation.parser.EntityParser
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.SybaseWrapper}.
 */
class SybaseWrapperTest {
    SybaseWrapper SybaseWrapper

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
    }

    @Test
    void shouldReturnCorrectParser(){

        String folderName = 'splitTables'
        Parser parser = sybaseWrapper.getParser(folderName)
        assertEquals(parser.class, EntityParser.class)
    }
}
