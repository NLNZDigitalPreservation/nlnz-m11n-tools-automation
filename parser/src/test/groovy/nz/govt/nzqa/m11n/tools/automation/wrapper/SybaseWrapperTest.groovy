package nz.govt.nzqa.m11n.tools.automation

import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.EntityParser
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.wrapper.SybaseWrapper
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.wrapper.SybaseWrapper}.
 */
class SybaseWrapperTest {
    SybaseWrapper sybaseWrapper

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
    }

    @Test
    void shouldReturnCorrectParser() {

        String folderName = 'splitTables'
        Parser parser = sybaseWrapper.getParser(folderName)
        assertEquals(parser.class, EntityParser.class)
    }

    @Test
    void shouldUpdateCorrectField() {

        MigrateWrapper migrateWrapper = new MigrateWrapper()

        Map<String, Object> fieldMap = new HashMap<>()
        fieldMap.put("test key", "test value")
        String fieldName = 'Keys'
        sybaseWrapper.setField(migrateWrapper, fieldMap, fieldName)

        assertEquals("test value", migrateWrapper.getKeys().get("test key"))
    }
}