package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.Index
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.dbmigrate.model.Utilities
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.wrapper.WrapperUtil}.
 */
class WrapperUtilTest {
    WrapperUtil wrapperUtil

    @Before
    void setup() {
        wrapperUtil = new WrapperUtil()
    }

    @Test
    void shouldUpdateCorrectField() {

        MigrateWrapper migrateWrapper = new MigrateWrapper()

        Map<String, Object> fieldMap = new HashMap<>()
        fieldMap.put("test key", "test value")
        String fieldName = 'Keys'
        wrapperUtil.setField(migrateWrapper, fieldMap, fieldName)

        assertEquals("test value", migrateWrapper.getKeys().get("test key"))
    }

    @Test
    void shouldIdentifyCorrectDataModelTypeAndName(){
        Entity testEntity = new Entity()
        testEntity.setName("test1")
        String entityName = 'test1'
        assertEquals(entityName, wrapperUtil.getDataModelName(testEntity))

        Utilities testUtilities = new Utilities()
        testUtilities.setName("test2")
        String utilName = 'test2'
        assertEquals(utilName, wrapperUtil.getDataModelName(testUtilities))

        Index testIndex = new Index()
        testIndex.setName("test3")
        String indexName = 'test3'
        assertEquals(indexName, wrapperUtil.getDataModelName(testIndex))

    }
}