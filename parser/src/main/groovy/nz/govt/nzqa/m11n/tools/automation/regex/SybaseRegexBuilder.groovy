package nz.govt.nzqa.m11n.tools.automation.regex

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.AttributeParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.ConstraintParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.CriteriaParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.EntityParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.IndexParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.ParamParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.RelationParser
import nz.govt.nzqa.m11n.tools.automation.parser.sybase.UtilitiesParser

class SybaseRegexBuilder implements RegexBuilder {

    @Override
    String build(String className, String fieldName, String parameter){
        String regexString = ''

        switch(className){
            case(EntityParser.class):
                regexString = buildEntityRegex(fieldName, parameter)
                break

            case(AttributeParser.class):
                regexString = buildAttributeRegex(fieldName, parameter)
                break

            case(RelationParser.class):
                regexString = buildRelationRegex(fieldName, parameter)
                break

            case(UtilitiesParser.class):
                regexString = buildUtilitiesRegex(fieldName, parameter)
                break

            case(ParamParser.class):
                regexString = buildParamRegex(fieldName, parameter)
                break

            case(IndexParser.class):
                regexString = buildIndexRegex(fieldName, parameter)
                break

            case(ConstraintParser.class):
                regexString = buildConstraintRegex(fieldName, parameter)
                break

            case(CriteriaParser.class):
                regexString = buildCriteriaRegex(fieldName, parameter)
                break
        }
        return regexString
    }

    @Override
    String build(String type, String field){
        return build(type, field, null)
    }

    @Override
    String buildEntityRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_DATABASE_NAME.getObjKey()):case(DBObjMapper.REGEX_TYPE.getObjKey()):
            case(DBObjMapper.REGEX_NAME.getObjKey()):case(DBObjMapper.REGEX_ACTION.getObjKey()):
            case(DBObjMapper.REGEX_ACTION_ENTITY.getObjKey()):
                switch(parameter) {
                    case (DBObjMapper.REGEX_DATA_TYPE.getObjKey()):
                        //(?i)EXEC sp_(add|drop)(\S+) (.*)
                        regexString = String.format("(?i)EXEC sp_(%s|%s)(\\S+) (.*)", DBObjMapper.ACTION_ADD.getObjKey(),
                                DBObjMapper.ACTION_DROP.getObjKey())
                        break

                    default:
                        //(?i)(CREATE|ADD|DROP|ALTER) (\S+) (\S+)
                        regexString = String.format("(?i)(%s|%s|%s|%s) (\\S+) (\\S+)",
                                DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                                DBObjMapper.ACTION_DROPONLY.getSybaseKey(), DBObjMapper.ACTION_ALTER.getSybaseKey())
                        break
                }
                break


            case(DBObjMapper.REGEX_FIELDS.getObjKey()):case(DBObjMapper.REGEX_CONSRTAINTS.getObjKey()):
                //(?i)(CREATE|ADD|DROP|ALTER) (\S+) (\S+) \((.*)\)
                regexString = String.format("(?i)(%s|%s|%s|%s) (\\S+) (\\S+) \\((.*)\\)",
                        DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                        DBObjMapper.ACTION_DROPONLY.getSybaseKey(), DBObjMapper.ACTION_ALTER.getSybaseKey())
                break

            case(DBObjMapper.REGEX_LOCKS.getObjKey()):
                //(?i)LOCK (\S+)
                regexString = String.format("(?i)%s (\\S+)", DBObjMapper.KEY_LOCK.getSybaseKey())
                break

            case(DBObjMapper.REGEX_OPERATION_TYPE.getObjKey()):
                switch(parameter){
                    case(DBObjMapper.ACTION_CREATE.getSybaseKey()):
                        //(?i)CREATE
                        regexString = String.format("(?i)%s ", DBObjMapper.ACTION_CREATE.getSybaseKey())
                        break

                    case(DBObjMapper.ENTITY_DEFAULT.getSybaseKey()):
                        //(?i)DEFAULT (\S+) AS
                        regexString = String.format("(?i)%s (\\S+) %s", DBObjMapper.ENTITY_DEFAULT.getSybaseKey(),
                        DBObjMapper.AS.getSybaseKey())
                        break
                }
                break

            case(DBObjMapper.REGEX_QUERY_VALUE.getObjKey()):
                //(?i)AS (.*)
                regexString = String.format("(?i)%s (.*)",DBObjMapper.AS.getSybaseKey())
                break

            case(DBObjMapper.REGEX_DATA_TYPE.getObjKey()):
                switch(parameter){
                    case(DBObjMapper.ENTITY_DEFAULT.getObjKey()):
                        //(?i)DEFAULT (.*) AS (.*)
                        regexString = String.format("(?i)%s (.*) %s (.*)", DBObjMapper.ENTITY_DEFAULT.getSybaseKey(),
                                DBObjMapper.AS.getSybaseKey())
                        break

                    case(DBObjMapper.REGEX_DATA_TYPE.getObjKey()):
                        //(?i)EXEC sp_(add|drop)(\S+) (.*)
                        regexString = String.format("(?i)EXEC sp_(%s|%s)(\\S+) (.*)", DBObjMapper.ACTION_ADD.getObjKey(),
                                DBObjMapper.ACTION_DROP.getObjKey())
                        break
                }

        }
        return regexString
    }

    @Override
    String buildAttributeRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_TYPE.getObjKey()):case(DBObjMapper.REGEX_ACTION.getObjKey()):
                // (?i)(CREATE|ADD|DELETE|UPDATE) (\S+) (\S+) \((.*)\)
                regexString = String.format("(?i)(%s|%s|%s|%s) (\\S+) (\\S+) \\((.*)\\)",
                        DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                        DBObjMapper.ACTION_DELETE.getSybaseKey(), DBObjMapper.ACTION_UPDATE.getSybaseKey())
                break

            case(DBObjMapper.REGEX_DATA_TYPE.getObjKey()):case(DBObjMapper.REGEX_LENGTH.getObjKey()):
            case(DBObjMapper.REGEX_FRACTION.getObjKey()):
                regexString = "(\\S+)\\((.*)\\)"
                break

            case(DBObjMapper.REGEX_DEFAULT_VALUE.getObjKey()):
                regexString = "(?i)DEFAULT (\\S+)"
                break

            case(DBObjMapper.REGEX_DEFAULT_VALUE_DATA_TYPE.getObjKey()):
                switch(parameter){
                    case(DBObjMapper.VALUETYPE_INT):
                        regexString = "(?i)DEFAULT (\\d+)"
                        break

                    case(DBObjMapper.VALUETYPE_CHAR):
                        regexString = "(?i)DEFAULT (\\S+)"
                        break
                }
                break

            case(DBObjMapper.REGEX_IS_NULL.getObjKey()):
                regexString = "(?i)NOT NULL"
                break
        }
        return regexString
    }

    @Override
    String buildRelationRegex(String fieldName, String parameter) {
        String regexString = "(?i)(GRANT) (.*) ON (\\S+\\((.*)\\)|\\S+) TO (\\S+)"
        return regexString
    }

    @Override
    String buildUtilitiesRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_DATABASE_NAME.getObjKey()):case(DBObjMapper.REGEX_TYPE.getObjKey()):
            case(DBObjMapper.REGEX_NAME.getObjKey()):case(DBObjMapper.REGEX_ACTION.getObjKey()):
            case(DBObjMapper.REGEX_ACTION_UTILITIES.getObjKey()):
                //(?i)(CREATE|DROP) (PROCEDURE|TRIGGER|FUNCTION) (\S+)
                regexString = String.format("(?i)(%s|%s) (%s|%s|%s) (\\S+)", DBObjMapper.ACTION_CREATE.getSybaseKey(),
                        DBObjMapper.ACTION_DROP.getSybaseKey(), DBObjMapper.ENTITY_PROCEDURE.getSybaseKey(),
                        DBObjMapper.ENTITY_TRIGGER.getSybaseKey(), DBObjMapper.ENTITY_FUNCTION.getSybaseKey())
                break

        }
        return regexString
    }

    @Override
    String buildParamRegex(String fieldName, String parameter) {
        return null
    }

    @Override
    String buildIndexRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName) {
            case (DBObjMapper.REGEX_DATABASE_NAME.getObjKey()):case (DBObjMapper.REGEX_ACTION.getObjKey()):
            case (DBObjMapper.REGEX_NAME.getObjKey()):case (DBObjMapper.REGEX_TABLE_NAME.getObjKey()):
            case(DBObjMapper.REGEX_FIELD_NAME.getObjKey()):
                switch(parameter) {
                    case (DBObjMapper.ACTION_DROP.getObjKey()):
                        //((DROP) INDEX (\S+)
                        regexString = String.format("(?i)(%s) %s (\\S+)", DBObjMapper.ACTION_DROP.getSybaseKey(),
                                DBObjMapper.ENTITY_INDEX.getSybaseKey())
                        break

                    default:
                        //(?i)(CREATE) (.*) INDEX (\S+) ON ((\S+)\((.*)\)|\S+)
                        regexString = String.format("(?i)(%s) (.*) %s (\\S+) ON ((\\S+)\\((.*)\\)|\\S+)", DBObjMapper.ACTION_CREATE.getSybaseKey(),
                                DBObjMapper.ENTITY_INDEX.getSybaseKey())
                        break

                }
                break
        }
        return regexString
    }

    @Override
    String buildConstraintRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_TYPE.getObjKey()):
                //(?i)CONSTRAINT (\S+) (FOREIGN KEY|PRIMARY KEY|UNIQUE|CHECK)
                regexString = String.format("(?i)%s (\\S+) (%s|%s|%s|%s)", DBObjMapper.KEY_CONSTRAINT.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_FOREIGNKEY.getSybaseKey(),  DBObjMapper.CONSTRAINT_PRIMARYKEY.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_UNIQUE.getSybaseKey(), DBObjMapper.CONSTRAINT_CHECK.getSybaseKey())
                break

            case(DBObjMapper.REGEX_NAME.getObjKey()):
                // (?i)CONSTRAINT (\S+)
                regexString =  String.format("(?i)%s (\\S+)", DBObjMapper.KEY_CONSTRAINT.getSybaseKey())

                break

            case(DBObjMapper.REGEX_SUB_TYPE.getObjKey()):
                //(?i)CONSTRAINT (\S+) (.*) (CLUSTERED|NONCLUSTERED)
                regexString = String.format("(?i)%s (\\S+) (.*) (%s|%s)", DBObjMapper.KEY_CONSTRAINT.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_CLUSTERED.getSybaseKey(), DBObjMapper.CONSTRAINT_NONCLUSTERED.getSybaseKey())
                break

            case(DBObjMapper.REGEX_ACTION.getObjKey()):
                switch (parameter){
                    case(DBObjMapper.ACTION_CREATE.getObjKey()):
                        //(?i)(CREATE) TABLE
                        regexString = String.format("(?i)(%s) %s", DBObjMapper.ACTION_CREATE.getSybaseKey(),
                                DBObjMapper.ENTITY_TABLE.getSybaseKey())
                        break
                    case(DBObjMapper.ACTION_ADD.getObjKey()):
                        //(?i)(ADD|DROP) CONSTRAINT
                        regexString = String.format("(?i)(%s|%s) %s",
                                DBObjMapper.ACTION_ADD.getSybaseKey(), DBObjMapper.ACTION_DROP.getSybaseKey(),
                                DBObjMapper.KEY_CONSTRAINT.getSybaseKey())
                        break
                }
                break

            case(DBObjMapper.REGEX_FIELDS.getObjKey()):
                switch(parameter){
                    case(DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey()):
                        //(?i)CONSTRAINT (\S+) (PRIMARY KEY|UNIQUE) (CLUSTERED|NONCLUSTERED) \((.*)\)
                        regexString = String.format("(?i)%s (\\S+) (%s|%s) (%s|%s) \\((.*)\\)",
                                DBObjMapper.KEY_CONSTRAINT.getSybaseKey(), DBObjMapper.CONSTRAINT_PRIMARYKEY.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_UNIQUE.getSybaseKey(), DBObjMapper.CONSTRAINT_CLUSTERED.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_NONCLUSTERED.getSybaseKey())
                        break

                    case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()):
                        //(?i)CONSTRAINT (\S+) FOREIGN KEY \((.*)\) REFERENCES
                        regexString = String.format("(?i)%s (\\S+) %s \\((.*)\\) %s",
                                DBObjMapper.KEY_CONSTRAINT.getSybaseKey(), DBObjMapper.CONSTRAINT_FOREIGNKEY.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_REFERENCES.getSybaseKey())
                        break
                }
                break

            case(DBObjMapper.REGEX_TABLE_NAME.getObjKey()):
                //(?i)TABLE (\S+)
                regexString = String.format("(?i)%s (\\S+)", DBObjMapper.ENTITY_TABLE.getSybaseKey())
                break

            case(DBObjMapper.REGEX_REFERENCE_TABLE_NAME.getObjKey()):case(DBObjMapper.REGEX_REFERENCE_FIELDS.getObjKey()):
                //(?i)REFERENCES (\S+) \((.*)\)
                regexString = String.format("(?i)%s (\\S+) \\((.*)\\)", DBObjMapper.CONSTRAINT_REFERENCES.getSybaseKey())
                break

            case(DBObjMapper.REGEX_CRITERIA.getObjKey()):
                //CONSTRAINT (\S+) CHECK
                regexString = String.format("(?i)CONSTRAINT (\\S+) CHECK", DBObjMapper.KEY_CONSTRAINT.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_CHECK.getSybaseKey())
                break
        }
        return regexString
    }

    @Override
    String buildCriteriaRegex(String fieldName, String parameter) {
        return null
    }

    @Override
    String buildEntityRegex(String fieldName) {
        return buildEntityRegex(fieldName, null)
    }

    @Override
    String buildAttributeRegex(String fieldName) {
        return buildAttributeRegex(fieldName, null)
    }

    @Override
    String buildRelationRegex(String fieldName) {
        return buildRelationRegex(fieldName, null)
    }

    @Override
    String buildUtilitiesRegex(String fieldName) {
        return buildUtilitiesRegex(fieldName, null)
    }

    @Override
    String buildParamRegex(String fieldName) {
        return buildParamRegex(fieldName, null)
    }

    @Override
    String buildIndexRegex(String fieldName) {
        return buildIndexRegex(fieldName, null)
    }

    @Override
    String buildConstraintRegex(String fieldName) {
        return buildConstraintRegex(fieldName, null)
    }

    @Override
    String buildCriteriaRegex(String fieldName) {
        return buildCriteriaRegex(fieldName, null)
    }
}
