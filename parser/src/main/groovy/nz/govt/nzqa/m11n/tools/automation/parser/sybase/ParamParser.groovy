package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.dbmigrate.model.Param
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class ParamParser implements Parser{

    SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
    ParserUtil util = new ParserUtil()

    String getName(String paramString){
        String regex = regexBuilder.buildParamRegex(DBObjMapper.REGEX_NAME.getObjKey())
        def result = (paramString =~ /$regex/)
        String name = (result? result[0][1].toString() : '')

        return name
    }

    String getDataType(String paramString){
        String regex = regexBuilder.buildParamRegex(DBObjMapper.REGEX_DATA_TYPE.getObjKey())
        def result = (paramString =~ /$regex/)
        String dataType = (result? result[0][2].toString() : '')

        return dataType
    }

    String getDefaultValue(String paramString){
        String regex = regexBuilder.buildParamRegex(DBObjMapper.REGEX_DEFAULT_VALUE.getObjKey())
        def result = (paramString =~ /$regex/)
        String defaultValue = (result? result[0][3].toString().replaceAll("\\s+", "") : '')

        return defaultValue
    }

    String getInOut(String paramString){
        String inOut = DBObjMapper.PARAM_INPUT.getObjKey()
        String regex = regexBuilder.buildParamRegex(DBObjMapper.REGEX_IN_OUT.getObjKey())
        String withDefaultRegex = regexBuilder.buildParamRegex(DBObjMapper.REGEX_IN_OUT.getObjKey(), DBObjMapper.ENTITY_DEFAULT.getObjKey())
        def result = (paramString =~ /$regex/)
        def withDefaultResult = (paramString =~ /$withDefaultRegex/)

        if (withDefaultResult){
            String output = withDefaultResult[0][4].toString()

            switch(output.toLowerCase()){
                case(DBObjMapper.PARAM_OUTPUT.getSybaseKey().toLowerCase()):
                    inOut = DBObjMapper.PARAM_OUTPUT.getObjKey()
                    break

                case(DBObjMapper.PARAM_INPUT_AND_OUTPUT.getSybaseKey().toLowerCase()):
                    inOut = DBObjMapper.PARAM_INPUT_AND_OUTPUT.getObjKey()
                    break

                }
        }

        else if(result){
            String output = result[0][3].toString()

            switch(output.toLowerCase()){
                case(DBObjMapper.PARAM_OUTPUT.getSybaseKey().toLowerCase()):
                    inOut = DBObjMapper.PARAM_OUTPUT.getObjKey()
                    break

                case(DBObjMapper.PARAM_INPUT_AND_OUTPUT.getSybaseKey().toLowerCase()):
                    inOut = DBObjMapper.PARAM_INPUT_AND_OUTPUT.getObjKey()
                    break

            }

        }
        return inOut
    }

    @Override
    Param parse(File file){
        Param param = new Param()
        return param
    }

    @Override
    Param parse(String paramString) {
        Param param = new Param()
        param.setName(getName(paramString))
        param.setDataType(getDataType(paramString))
        param.setDefaultValue(getDefaultValue(paramString))
        param.setInOut(getInOut(paramString))
        return param
    }
}
