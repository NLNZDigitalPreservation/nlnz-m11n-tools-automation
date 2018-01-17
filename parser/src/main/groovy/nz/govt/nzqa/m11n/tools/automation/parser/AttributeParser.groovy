package nz.govt.nzqa.m11n.tools.automation.parser

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Attribute

class AttributeParser implements Parser{

    String getType(String sqlStatement){
        def result = (sqlStatement =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+) \((.*)\)/)
        String type = (result && result[0][1].toString().equalsIgnoreCase('CREATE')? 'Column' : '')

        return type
    }

    String getName(String attributeString){
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        String name = (attributeFields.size() > 0? attributeFields[0] : '')

        return name
    }

    String getAction(String sqlStatement){
        def result = (sqlStatement =~ /(?i)(CREATE|ALTER|ADD|DROP|DROPONLY) (\S+) (\S+) \((.*)\)/)
        String action = (result? result[0][1].toString() : '')

        return action
    }

    String getDataType(String attributeString){
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /(\S+)\((.*)\)/ : '')
        String dataType = (type? type[0][1] : (attributeFields.size() > 0? attributeFields[1] : ''))

        return dataType
    }

    String getLength(String attributeString){
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /(\S+)\((.*)\)/ : '')
        String[] types = (type? type[0][2].toString().split(",") : '')
        String length =  (types.size() == 2? types[0] : type[0][2])
        return length
    }

    String getFraction(String attributeString){
        String[] attributeFields = attributeString.trim().replaceAll(" +", " ").split(" ")
        def type = (attributeFields.size() > 0? attributeFields[1] =~ /(\S+)\((.*)\)/ : '')
        String[] types = (type? type[0][2].toString().split(",") : '')
        String fraction = (types.size() == 2? types[1] : '')
        return fraction
    }

    String getDefaultValue(String attributeString){
        def result = (attributeString =~ /(?i)DEFAULT (\S+)/)
        String defaultValue = (result? result[0][1].toString().replaceAll("'", "")
                .replaceAll('"', "") : '')
        return defaultValue
    }

    String getDefaultValueDataType(String attributeString){
        def result = (attributeString =~ /(?i)DEFAULT (\d+)/)
        String defaultValueDataType = (result? DBObjMapper.VALUETYPE_INT :  DBObjMapper.VALUETYPE_CHAR)
        return defaultValueDataType
    }

    boolean getIsNull(String attributeString){
        def result = (attributeString =~ /(?i)NOT NULL/)
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
