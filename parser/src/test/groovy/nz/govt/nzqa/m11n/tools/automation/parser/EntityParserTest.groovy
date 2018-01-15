package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.m11n.tools.automation.parser.EntityParser
import org.junit.Before
import org.junit.Test

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.EntityParser}.
 */

class EntityParserTest {

    EntityParser entityParser

    @Before
    void setup() {
        entityParser = new EntityParser()
    }

    @Test
    void shouldParseTypeNameAction() {
        String lineName = ''
        String currentEntityNameTest = ''
        assertEquals(entityParser.parser("CREATE TABLE"))
    }
}
