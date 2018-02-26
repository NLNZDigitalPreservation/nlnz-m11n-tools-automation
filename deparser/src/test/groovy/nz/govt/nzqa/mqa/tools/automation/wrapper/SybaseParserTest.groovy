package nz.govt.nzqa.mqa.tools.automation.wrapper

import nz.govt.nzqa.dbmigrate.model.Entity
import nz.govt.nzqa.dbmigrate.model.MigrateWrapper
import nz.govt.nzqa.m11n.tools.automation.deparser.mssql.DeparserUtil
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser
import nz.govt.nzqa.m11n.tools.automation.wrapper.SybaseWrapper
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertEquals

class SybaseParserTest {

    SybaseWrapper sybaseWrapper
    EntityParser entityParser
    DeparserUtil deparserUtil

    @Before
    void setup() {
        sybaseWrapper = new SybaseWrapper()
        entityParser = new EntityParser()
    }

    @Test
    void shouldReturnCompleteMigrateWrapperForCreate1Table() {
        String testDir = 'C:\\Guna\\Work\\Analyse\\eQAModernisation\\testsqls\\Input'
        List<MigrateWrapper> testMigrateWrapper = sybaseWrapper.parse(testDir)

        deparserUtil =new DeparserUtil(testMigrateWrapper)
        deparserUtil.deParse()

    }
}
