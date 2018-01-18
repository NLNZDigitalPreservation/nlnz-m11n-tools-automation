package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder
import nz.govt.nzqa.m11n.tools.automation.parser.Parser

class AttributeParser implements Parser{

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()

    String getType(String sqlStatement){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_TYPE.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String type = (result && result[0][1].toString().equalsIgnoreCase('CREATE')? 'Column' : '')

        return type
    }

    String getName(String attributeString){
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        String name = (attributeFields.size() > 0? attributeFields[0] : '')

        return name
    }

    String getAction(String sqlStatement){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_ACTION.getObjKey())
        def result = (sqlStatement =~ /$regex/)
        String action = (result? result[0][1].toString() : '')

        return action
    }

    String getDataType(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey())
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /$regex/ : '')
        String dataType = (type? type[0][1] : (attributeFields.size() > 0? attributeFields[1] : ''))

        return dataType
    }

    String getLength(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_LENGTH.getObjKey())
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /$regex/ : '')
        String[] types = (type? type[0][2].toString().split(",") : '')
        String length =  (types.size() == 2? types[0] : type[0][2])
        return length
    }

    String getFraction(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_FRACTION.getObjKey())
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /$regex/ : '')
        String[] types = (type? type[0][2].toString().split(",") : '')
        String fraction = (types.size() == 2? types[1] : '')
        return fraction
    }

    String getDefaultValue(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_DEFAULT_VALUE.getObjKey())
        def result = (attributeString =~ /$regex/)
        String defaultValue = (result? result[0][1].toString().replaceAll("'", "")
                .replaceAll('"', "") : '')
        return defaultValue
    }

    String getDefaultValueDataType(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_DEFAULT_VALUE_DATA_TYPE.getObjKey())
        def result = (attributeString =~ /$regex/)
        String defaultValueDataType = (result? DBObjMapper.VALUETYPE_INT :  DBObjMapper.VALUETYPE_CHAR)
        return defaultValueDataType
    }

    boolean getIsNull(String attributeString){
        String regex = regexBuilder.buildAttributeRegex(DBObjMapper.REGEX_IS_NULL.getObjKey())
        def result = (attributeString =~ /$regex/)
        boolean isNull = !(result)

        return isNull
    }

    @Override
    Attribute parse(File file){
        Attribute attribute = new Attribute()
        return attribute
    }

    @Override
    Attribute parse(String attributeString) {

        Attribute attribute = new Attribute()

        attribute.setName(getName(attributeString))

        attribute.setDataType(getDataType(attributeString))
        attribute.setLength(getLength(attributeString))
        attribute.setFraction(getFraction(attributeString))
        attribute.setDefaultValue(getDefaultValue(attributeString))
        attribute.setDefaultValDataType(getDefaultValueDataType(attributeString))
        attribute.setNull(getIsNull(attributeString))

        return attribute
    }
}
