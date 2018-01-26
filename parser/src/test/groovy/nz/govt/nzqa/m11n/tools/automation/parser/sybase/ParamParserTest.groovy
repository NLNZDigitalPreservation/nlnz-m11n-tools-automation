package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.model.Param
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.ParamParser}.
 */

class ParamParserTest {

    ParamParser paramParser

    @Before
    void setup() {
        paramParser = new ParamParser()
    }

    @Test
    void shouldReturnInputParam(){

        String paramString = "@academic_year char(4)"
        Param testParam = paramParser.parse(paramString)
        assertEquals("academic_year", testParam.getName())
        assertEquals("char(4)", testParam.getDataType())
        assertEquals("", testParam.getDefaultValue())
        assertEquals("INPUT", testParam.getInOut())
    }

    @Test
    void shouldReturnInputParamWithDefault(){

        String paramString = "@DebugYN char(1) = 'N'"
        Param testParam = paramParser.parse(paramString)
        assertEquals("DebugYN", testParam.getName())
        assertEquals("char(1)", testParam.getDataType())
        assertEquals("'N'", testParam.getDefaultValue())
        assertEquals("INPUT", testParam.getInOut())
    }


    @Test
    void shouldReturnInputParamTypeOutput(){

        String paramString = "@ErrorMessage varchar(255) output"
        Param testParam = paramParser.parse(paramString)
        assertEquals("ErrorMessage", testParam.getName())
        assertEquals("varchar(255)", testParam.getDataType())
        assertEquals("", testParam.getDefaultValue())
        assertEquals("OUTPUT", testParam.getInOut())
    }

    @Test
    void shouldReturnInputParamWithDefaultTypeOutput(){

        String paramString = "@DebugYN char(1) = 'N' output"
        Param testParam = paramParser.parse(paramString)
        assertEquals("DebugYN", testParam.getName())
        assertEquals("char(1)", testParam.getDataType())
        assertEquals("'N'", testParam.getDefaultValue())
        assertEquals("OUTPUT", testParam.getInOut())
    }

    @Test
    void shouldReturnInputParamWithDefaultTypeBoth(){

        String paramString = "@DebugYN char(1) = 'N' inout"
        Param testParam = paramParser.parse(paramString)
        assertEquals("DebugYN", testParam.getName())
        assertEquals("char(1)", testParam.getDataType())
        assertEquals("'N'", testParam.getDefaultValue())
        assertEquals("BOTH", testParam.getInOut())
    }
}
