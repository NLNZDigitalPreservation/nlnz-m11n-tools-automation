package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertArrayEquals
import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertFalse

/**
 * Tests the {@link SybaseWrapper}.
 */
class SybaseWrapperTest {
    SybaseWrapper sybaseWrapper
    EntityParser entityParser

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
        entityParser = new EntityParser()
    }

    @Test
    void shouldReturnCompleteMigrateWrapperForCreate1Table() {
        String schema = 'eqa_prod'
        MigrateWrapper migrateWrapper = new MigrateWrapper()
        migrateWrapper.setSchema(schema)

        Map<String, Entity> fieldMap = new HashMap<>()
        Entity entity = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitTables/splitTables-0-dbo.ACADEMIC_YEAR_TYPE.sql'), schema)
        fieldMap.put(entity.getName(), entity)
        Entity entity2 = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitTables/splitTables-83-dbo.CFN_CATEGORY.sql'), schema)
        fieldMap.put(entity2.getName(), entity2)
        migrateWrapper.setTables(fieldMap)

        Map<String, Entity> keyMap = new HashMap<>()
        Entity fk = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitForeignKeys/splitTables-0-alter-dbo.ACADEMIC_YEAR_TYPE.sql'), schema)
        keyMap.put(fk.getConstraints().get("FK_ACA_YEAR_ACA_YEAR_TYPE").getName(), fk)

        Entity fk2 = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitForeignKeys/splitTables-2-alter-dbo.ACCREDITED_ITEM.sql'), schema)
        keyMap.put(fk2.getConstraints().get("FK_ACCRED_ITEM_CREATE_CASE").getName(), fk2)
        migrateWrapper.setKeys(keyMap)

        String testDir = 'src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource'
        List<MigrateWrapper> testMigrateWrappers = sybaseWrapper.parse(testDir)

        assertEquals(migrateWrapper.getTables().size(), testMigrateWrappers.get(0).getTables().size())
        assertEquals(migrateWrapper.getTables().keySet(), testMigrateWrappers.get(0).getTables().keySet())
        assertEquals(migrateWrapper.getTables().get('ACADEMIC_YEAR_TYPE').getAction(), 'CREATE')

        assertEquals(migrateWrapper.getKeys().keySet(), testMigrateWrappers.get(0).getKeys().keySet())
        assertEquals('ALTER', migrateWrapper.getKeys().get('FK_ACCRED_ITEM_CREATE_CASE').getAction())
        assertEquals('ALTER', migrateWrapper.getKeys().get('FK_ACA_YEAR_ACA_YEAR_TYPE').getAction())
        assertEquals(migrateWrapper.getSchema(), testMigrateWrappers.get(0).getSchema())

    }

    @Test
    void shouldReturn2MigrateWrappers(){
        String testDir = 'src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/testMigrateWrappers'
        List<MigrateWrapper> testMigrateWrappers = sybaseWrapper.parse(testDir)

        assertEquals(2, testMigrateWrappers.size())
        assertFalse(testMigrateWrappers.get(0).getSchema() == testMigrateWrappers.get(1).getSchema())
    }
}

