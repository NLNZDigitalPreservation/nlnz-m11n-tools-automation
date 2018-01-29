package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertEquals

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser}.
 */

class AttributeParserTest {

    AttributeParser attributeParser

    @Before
    void setup() {
        attributeParser = new AttributeParser()
    }

    @Test
    void shouldParseAttributeStringAndReturnCorrectAttribute() {

        String attributeString1 = 'academic_year            char(4)    NOT NULL'
        String attributeString2 = 'academic_year_type       varchar(4)'

        Attribute attribute1 = new Attribute()
//        attribute1.setType('')
        attribute1.setName('academic_year')
//        attribute.setAction('')
        attribute1.setDataType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        attribute1.setLength('4')
        attribute1.setFraction('')
        attribute1.setDefaultValue('')
        attribute1.setDefaultValDataType('')
        attribute1.setNull(false)

        Attribute attribute2 = new Attribute()
//        attribute2.setType('')
        attribute2.setName('academic_year_type')
//        attribute2.setAction('')
        attribute2.setDataType('varchar'.toUpperCase())
        attribute2.setLength('4')
        attribute2.setFraction('')
        attribute2.setDefaultValue('')
        attribute2.setDefaultValDataType('')
        attribute2.setNull(true)

        Attribute generatedAttribute1 = attributeParser.parse(attributeString1)
        Attribute generatedAttribute2 = attributeParser.parse(attributeString2)

//        assertEquals(attribute1.getType(), generatedAttribute1.getType())
        assertEquals(attribute1.getName(), generatedAttribute1.getName())
//        assertEquals(attribute1.getAction(), generatedAttribute1.getAction())
        assertEquals(attribute1.getDataType(), generatedAttribute1.getDataType())
        assertEquals(attribute1.getLength(), generatedAttribute1.getLength())
        assertEquals(attribute1.getFraction(), generatedAttribute1.getFraction())
        assertEquals(attribute1.getDefaultValue(), generatedAttribute1.getDefaultValue())
        assertEquals(attribute1.getDefaultValDataType(), generatedAttribute1.getDefaultValDataType())
        assertEquals(attribute1.isNull(), generatedAttribute1.isNull())

//        assertEquals(attribute2.getType(), generatedAttribute2.getType())
        assertEquals(attribute2.getName(), generatedAttribute2.getName())
//        assertEquals(attribute2.getAction(), generatedAttribute2.getAction())
        assertEquals(attribute2.getDataType(), generatedAttribute2.getDataType())
        assertEquals(attribute2.getLength(), generatedAttribute2.getLength())
        assertEquals(attribute2.getFraction(), generatedAttribute2.getFraction())
        assertEquals(attribute2.getDefaultValue(), generatedAttribute2.getDefaultValue())
        assertEquals(attribute2.getDefaultValDataType(), generatedAttribute2.getDefaultValDataType())
        assertEquals(attribute2.isNull(), generatedAttribute2.isNull())
    }

    @Test
    void shouldParseAttributeCharType() {

        String attributeString = 'academic_year            char(4)    NOT NULL'
        Attribute attribute = new Attribute()
//        attribute.setType('')
        attribute.setName('academic_year')
//        attribute.setAction('')
        attribute.setDataType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        attribute.setLength('4')
        attribute.setFraction('')
        attribute.setDefaultValue('')
        attribute.setDefaultValDataType('')
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

//        assertEquals(attribute.getType(), generatedAttribute.getType())
        assertEquals(attribute.getName(), generatedAttribute.getName())
//        assertEquals(attribute.getAction(), generatedAttribute.getAction())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

        @Test
    void shouldParseAttributeIntType(){

        String attributeString = 'academic_year            int(10,2)    NOT NULL'
        Attribute attribute = new Attribute()
//        attribute.setType('')
        attribute.setName('academic_year')
//        attribute.setAction('')
        attribute.setDataType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        attribute.setLength('10')
        attribute.setFraction('2')
        attribute.setDefaultValue('')
        attribute.setDefaultValDataType('')
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

//        assertEquals(attribute.getType(), generatedAttribute.getType())
        assertEquals(attribute.getName(), generatedAttribute.getName())
//        assertEquals(attribute.getAction(), generatedAttribute.getAction())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

    @Test
    void shouldParseAttributeWithDefaultChar(){

        String attributeString = 'file_type_code            char(3)   DEFAULT "DM1" NOT NULL'
        Attribute attribute = new Attribute()
//        attribute.setType('')
        attribute.setName('file_type_code')
//        attribute.setAction('')
        attribute.setDataType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        attribute.setLength('3')
        attribute.setFraction('')
        attribute.setDefaultValue("DM1")
        attribute.setDefaultValDataType(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey())
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

//        assertEquals(attribute.getType(), generatedAttribute.getType())
        assertEquals(attribute.getName(), generatedAttribute.getName())
//        assertEquals(attribute.getAction(), generatedAttribute.getAction())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())

    }

    @Test
    void shouldParseAttributeWithDefaultInt(){

        String attributeString = 'file_type_code            int(10,2)   DEFAULT 30 NOT NULL'
        Attribute attribute = new Attribute()
//        attribute.setType('')
        attribute.setName('file_type_code')
//        attribute.setAction('')
        attribute.setDataType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        attribute.setLength('10')
        attribute.setFraction('2')
        attribute.setDefaultValue("30")
        attribute.setDefaultValDataType(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey())
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

//        assertEquals(attribute.getType(), generatedAttribute.getType())
        assertEquals(attribute.getName(), generatedAttribute.getName())
//        assertEquals(attribute.getAction(), generatedAttribute.getAction())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

    @Test
    void shouldParseAttributeWithUserDatatype(){

        String attributeString = 'academic_year_desc       descr      NOT NULL'
        Attribute attribute = new Attribute()
//        attribute.setType('')
        attribute.setName('academic_year_desc')
//        attribute.setAction('')
        attribute.setDataType('descr'.toUpperCase())
        attribute.setLength('')
        attribute.setFraction('')
        attribute.setDefaultValue("")
        attribute.setDefaultValDataType("")
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

//        assertEquals(attribute.getType(), generatedAttribute.getType())
        assertEquals(attribute.getName(), generatedAttribute.getName())
//        assertEquals(attribute.getAction(), generatedAttribute.getAction())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }


}
