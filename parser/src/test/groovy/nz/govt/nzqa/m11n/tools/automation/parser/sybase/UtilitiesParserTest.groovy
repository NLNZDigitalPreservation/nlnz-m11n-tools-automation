package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Utilities
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.UtilitiesParser}.
 */

class UtilitiesParserTest {

    UtilitiesParser utilitiesParser
    ParamParser paramParser

    @Before
    void setup() {
        utilitiesParser = new UtilitiesParser()
        paramParser = new ParamParser()
    }

    @Test
    void shouldReturnSPUtilitiesWithCorrectParameters(){
        Utilities testUtilities = utilitiesParser.parse(new File(
                'src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitSPs/testFile.sql'))

        // create procedure dbo.ContactsMergeCopyName
        // @ContactMergeRunId object_id,
        // @NameId object_id,
        // @DebugYN char(1),
        // @ErrorMessage varchar(255) output as ..."

        assertEquals("dbo", testUtilities.getDatabaseName())
        assertEquals("procedure", testUtilities.getType())
        assertEquals("ContactsMergeCopyName", testUtilities.getName())
        assertEquals("create", testUtilities.getAction())
        assertEquals(4, testUtilities.getInFields().size())

        assertEquals("ContactMergeRunId", testUtilities.getInFields().get("ContactMergeRunId").getName())
        assertEquals("object_id", testUtilities.getInFields().get("ContactMergeRunId").getDataType())
        assertEquals("", testUtilities.getInFields().get("ContactMergeRunId").getDefaultValue())
        assertEquals("INPUT", testUtilities.getInFields().get("ContactMergeRunId").getInOut())

        assertEquals("NameId", testUtilities.getInFields().get("NameId").getName())
        assertEquals("object_id", testUtilities.getInFields().get("NameId").getDataType())
        assertEquals("", testUtilities.getInFields().get("NameId").getDefaultValue())
        assertEquals("INPUT", testUtilities.getInFields().get("NameId").getInOut())

        assertEquals("DebugYN", testUtilities.getInFields().get("DebugYN").getName())
        assertEquals("char(1)", testUtilities.getInFields().get("DebugYN").getDataType())
        assertEquals("", testUtilities.getInFields().get("DebugYN").getDefaultValue())
        assertEquals("INPUT", testUtilities.getInFields().get("DebugYN").getInOut())

        assertEquals("ErrorMessage", testUtilities.getInFields().get("ErrorMessage").getName())
        assertEquals("varchar(255)", testUtilities.getInFields().get("ErrorMessage").getDataType())
        assertEquals("", testUtilities.getInFields().get("ErrorMessage").getDefaultValue())
        assertEquals("OUTPUT", testUtilities.getInFields().get("ErrorMessage").getInOut())
    }

    @Test
    void shouldReturnTriggerUtilities(){
        Utilities testUtilities = utilitiesParser.parse(new File(
                'src/test/groovy/nz/govt/nzqa/m11n/tools/automation/parser/sybase/resource/splitTriggers/testFile.sql'))

        assertEquals("TRIGGER", testUtilities.getType())
        assertEquals("du_ACCREDITATION", testUtilities.getName())
        assertEquals("CREATE", testUtilities.getAction())
//        assertEquals(sql, testUtilities.getSql())
        assertEquals("ACCREDITATION", testUtilities.getTriggerTableName())
        assertEquals(Arrays.asList("DELETE", "UPDATE"), testUtilities.getTriggerOperations())
    }

}
