package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Entity
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.assertEquals

/**
 * Tests the {@link EntityParser}.
 */

class EntityParserTest {

    EntityParser entityParser

    @Before
    void setup() {
        entityParser = new EntityParser()
    }

    @Test
    void shouldParseTypeNameAction() {

        Entity entity = new Entity()
        entity.name = 'ACADEMIC_YEAR'
        entity.databaseName = 'dbo'
        Entity generatedEntity = entityParser.parse(new File("src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/resource/parserUtilTestFileCreateTable.sql"))
        assertEquals(entity.name, generatedEntity.name)
        assertEquals(entity.databaseName, generatedEntity.databaseName)
    }
}
