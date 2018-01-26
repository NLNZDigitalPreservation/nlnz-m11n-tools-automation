package nz.govt.nzqa.m11n.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

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
        MigrateWrapper migrateWrapper = new MigrateWrapper()
        migrateWrapper.setSchema('eqa_prod')

        Map<String, Entity> fieldMap = new HashMap<>()
        Entity entity = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitTables/splitTables-0-dbo.ACADEMIC_YEAR_TYPE.sql'))
        fieldMap.put(entity.getName(), entity)
        migrateWrapper.setTables(fieldMap)

        Map<String, Entity> keyMap = new HashMap<>()
        Entity fk = entityParser.parse(new File('src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitForeignKeys/splitTables-0-alter-dbo.ACADEMIC_YEAR_TYPE.sql'))
        keyMap.put(fk.getName(), fk)
        migrateWrapper.setKeys(keyMap)

        String testDir = 'src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource'
        MigrateWrapper testMigrateWrapper = sybaseWrapper.parse(testDir)

//        System.out.println("getTables size: " + testMigrateWrapper.getTables().size())
//        System.out.println("getTables keys: " + testMigrateWrapper.getTables().keySet())
//        System.out.println("getKeys size: " + testMigrateWrapper.getKeys().size())
//        System.out.println("getKeys keys: " + testMigrateWrapper.getKeys().keySet())

        assertEquals(migrateWrapper.getTables().size(), testMigrateWrapper.getTables().size())
        assertEquals(migrateWrapper.getTables().keySet(), testMigrateWrapper.getTables().keySet())
        assertEquals(migrateWrapper.getTables().get('ACADEMIC_YEAR_TYPE').getAction(), 'CREATE')

        assertEquals(migrateWrapper.getKeys().keySet(), testMigrateWrapper.getKeys().keySet())
        assertEquals(migrateWrapper.getKeys().get('ACADEMIC_YEAR').getAction(), 'ALTER')
        assertEquals(migrateWrapper.getSchema(), testMigrateWrapper.getSchema())

    }
}