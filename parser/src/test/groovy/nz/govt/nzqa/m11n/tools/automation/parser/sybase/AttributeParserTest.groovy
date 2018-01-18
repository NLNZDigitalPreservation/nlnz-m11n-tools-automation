package nz.govt.nzqa.m11n.tools.automation.parser.sybase

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
        String attributeString2 = 'academic_year_type       varchar(4) NOT NULL'

        Attribute attribute1 = new Attribute()
        attribute1.setName('academic_year')
        attribute1.setDataType('char')
        attribute1.setLength('4')
        attribute1.setNull(false)

        Attribute attribute2 = new Attribute()
        attribute2.setName('academic_year_type')
        attribute2.setDataType('varchar')
        attribute2.setLength('4')
        attribute2.setNull(false)

        Attribute generatedAttribute1 = attributeParser.parse(attributeString1)
        Attribute generatedAttribute2 = attributeParser.parse(attributeString2)

        assertEquals(attribute1.getName(), generatedAttribute1.getName())
        assertEquals(attribute1.getDataType(), generatedAttribute1.getDataType())
        assertEquals(attribute1.getLength(), generatedAttribute1.getLength())
        assertEquals(attribute1.isNull(), generatedAttribute1.isNull())

        assertEquals(attribute2.getName(), generatedAttribute2.getName())
        assertEquals(attribute2.getDataType(), generatedAttribute2.getDataType())
        assertEquals(attribute2.getLength(), generatedAttribute2.getLength())
        assertEquals(attribute2.isNull(), generatedAttribute2.isNull())
    }

    @Test
    void shouldParseAttributeCharType(){

        String attributeString = 'academic_year            char(4)    NOT NULL'
        Attribute attribute = new Attribute()
        attribute.setName('academic_year')
        attribute.setDataType('char')
        attribute.setLength('4')
        attribute.setFraction('')
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

        assertEquals(attribute.getName(), generatedAttribute.getName())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

    @Test
    void shouldParseAttributeIntType(){

        String attributeString = 'academic_year            int(10,2)    NOT NULL'
        Attribute attribute = new Attribute()
        attribute.setName('academic_year')
        attribute.setDataType('int')
        attribute.setLength('10')
        attribute.setFraction('2')
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

        assertEquals(attribute.getName(), generatedAttribute.getName())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

    @Test
    void shouldParseAttributeWithDefaultChar(){

        String attributeString = 'file_type_code            char(3)   DEFAULT "DM1" NOT NULL'
        Attribute attribute = new Attribute()
        attribute.setName('file_type_code')
        attribute.setDataType('char')
        attribute.setLength('3')
        attribute.setFraction('')
        attribute.setDefaultValue("DM1")
        attribute.setDefaultValDataType("char")
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

        assertEquals(attribute.getName(), generatedAttribute.getName())
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
        attribute.setName('file_type_code')
        attribute.setDataType('int')
        attribute.setLength('10')
        attribute.setFraction('2')
        attribute.setDefaultValue("30")
        attribute.setDefaultValDataType("int")
        attribute.setNull(false)

        Attribute generatedAttribute = attributeParser.parse(attributeString)

        assertEquals(attribute.getName(), generatedAttribute.getName())
        assertEquals(attribute.getDataType(), generatedAttribute.getDataType())
        assertEquals(attribute.getLength(), generatedAttribute.getLength())
        assertEquals(attribute.getFraction(), generatedAttribute.getFraction())
        assertEquals(attribute.getDefaultValue(), generatedAttribute.getDefaultValue())
        assertEquals(attribute.getDefaultValDataType(), generatedAttribute.getDefaultValDataType())
        assertEquals(attribute.isNull(), generatedAttribute.isNull())
    }

}
