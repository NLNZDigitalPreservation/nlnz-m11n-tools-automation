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
                    case (DBObjMapper.ENTITY_DATATYPE.getObjKey()):
                        //(?i)EXEC (sp_add\S+|sp_drop\S+) (.*)
                        regexString = "(?i)EXEC (sp_add\\S+|sp_drop\\S+) (.*)"
                        break

                    case (DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()):
                        //(?i)EXEC (sp_drop\S+) (.*)\s
                        regexString = "(?i)EXEC (sp_drop\\S+) (.*?)\\s"
                        break

                    case(DBObjMapper.ACTION_ALTER.getObjKey()):
                        //(?i)ALTER (\S+) (\S+) (ADD|DROP) (\S+) (\S+)
                        regexString = String.format("(?i)%s (\\S+) (\\S+) (%s|%s) (\\S+) (\\S+)",
                                DBObjMapper.ACTION_ALTER.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                                DBObjMapper.ACTION_DROPONLY.getSybaseKey())
                        break

                    default:
                        //(?i)(CREATE|ADD|DROP) (\S+) (\S+)
                        regexString = String.format("(?i)(%s|%s|%s) (\\S+) (\\S+)",
                                DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                                DBObjMapper.ACTION_DROPONLY.getSybaseKey())
                        break
                }
                break


            case(DBObjMapper.REGEX_FIELDS.getObjKey()):case(DBObjMapper.REGEX_CONSRTAINTS.getObjKey()):
                //(?i)(CREATE|ADD|DROP) (\S+) (\S+) \((.*)\)
                regexString = String.format("(?i)(%s|%s|%s) (\\S+) (\\S+) \\((.*)\\)",
                        DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.ACTION_ADD.getSybaseKey(),
                        DBObjMapper.ACTION_DROP.getSybaseKey())
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

                    case(DBObjMapper.ENTITY_DATATYPE.getObjKey()):
                        //(?i)EXEC (sp_add\S+|sp_drop\S+) (.*)
                        regexString = "(?i)EXEC (sp_add\\S+|sp_drop\\S+) (.*)"
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
                    case(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                        regexString = "(?i)DEFAULT (\\d+)"
                        break

                    case(DBObjMapper.CRITERIA_VALUETYPE_CHAR.getDataTypeKey()):
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
                //(?i)(CREATE|DROP) (PROCEDURE|TRIGGER|FUNCTION|PROC) (\S+)
                regexString = String.format("(?i)(%s|%s) (%s|%s|%s|%s) (\\S+)", DBObjMapper.ACTION_CREATE.getSybaseKey(),
                        DBObjMapper.ACTION_DROP.getSybaseKey(), DBObjMapper.UTILITIES_PROCEDURE.getSybaseKey(),
                        DBObjMapper.UTILITIES_TRIGGER.getSybaseKey(), DBObjMapper.UTILITIES_FUNCTION.getSybaseKey(), DBObjMapper.UTILITIES_PROC.getSybaseKey())
                break

            case(DBObjMapper.REGEX_TRIGGER_TABLE_NAME.getObjKey()):case(DBObjMapper.REGEX_TRIGGER_OPERATIONS.getObjKey()):
                //(?i)CREATE TRIGGER (\S+) ON (\S+) FOR (.*) AS (.*)
                regexString = String.format("(?i)%s %s (\\S+) ON (\\S+) FOR (.*) AS (.*)",
                        DBObjMapper.ACTION_CREATE.getSybaseKey(), DBObjMapper.UTILITIES_TRIGGER.getSybaseKey())
                break

            case(DBObjMapper.REGEX_IN_FIELDS.getObjKey()):
                //(?i)CREATE (PROCEDURE|PROC) (\S+) (.*) AS (.*)
                regexString = String.format("(?i)%s (%s|%s) (\\S+) (.*) AS (\\S+)",
                        DBObjMapper.ACTION_CREATE.getSybaseKey(),DBObjMapper.UTILITIES_PROCEDURE.getSybaseKey(), DBObjMapper.UTILITIES_PROC.getSybaseKey())
                break

            case(DBObjMapper.REGEX_SQL.getObjKey()):
                //Fix to match first create - refer dbo.proc_examGetMrkSheets - for multiple create pattern matching issue...
                //(?i)CREATE .*? AS (.*)  -- ? after .* is added to get short match of "Create .. as" pattern
                //(?:^|\\W)(?i)%s .* AS (?:\$|\\W)(.*)  --> not working
                regexString = String.format("(?i)CREATE .*? AS (.*)", DBObjMapper.ACTION_CREATE.getSybaseKey())
                break

        }
        return regexString
    }

    @Override
    String buildParamRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_NAME.getObjKey()):case(DBObjMapper.REGEX_DATA_TYPE.getObjKey()):
                //(?i)@(\S+) (\S+)
                regexString = "(?i)@(\\S+) (\\S+)"
                break

            case(DBObjMapper.REGEX_DEFAULT_VALUE.getObjKey()):
                //(?i)@(\S+) (\S+) = (\S+)
                regexString = "@(\\S+) (\\S+) = (\\S+)"
                break

            case(DBObjMapper.REGEX_IN_OUT.getObjKey()):
                switch(parameter){
                    case(DBObjMapper.ENTITY_DEFAULT.getObjKey()):
                        //(?i)@(\S+) (\S+) = (\S+) (OUTPUT|INOUT)
                        regexString = String.format("(?i)@(\\S+) (\\S+) = (\\S+) (%s|%s)",
                                DBObjMapper.PARAM_OUTPUT.getSybaseKey(),DBObjMapper.PARAM_INPUT_AND_OUTPUT.getSybaseKey())
                        break

                    default:
                        //(?i)@(\S+) (\S+) (OUTPUT|INOUT)
                        regexString = String.format("(?i)@(\\S+) (\\S+) (%s|%s)",
                                DBObjMapper.PARAM_OUTPUT.getSybaseKey(),DBObjMapper.PARAM_INPUT_AND_OUTPUT.getSybaseKey())
                        break
                }
                break
        }
        return regexString
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

            case(DBObjMapper.REGEX_WITH_CLAUSE.getObjKey()):
            //(?i)WITH (.*)
            regexString = "(?i)WITH (.*)"
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
                //(?i)CONSTRAINT (\S+) CHECK
                regexString = String.format("(?i)%s (\\S+) %s", DBObjMapper.KEY_CONSTRAINT.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_CHECK.getSybaseKey())
                break
        }
        return regexString
    }

    @Override
    String buildCriteriaRegex(String fieldName, String parameter) {
        String regexString = ''

        switch(fieldName){
            case(DBObjMapper.REGEX_ACTION_CRITERIA.getObjKey()):
                switch (parameter){
                    case(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey()):
                        //\((.*)\)
                        regexString = '\\((.*)\\)'
                        break

                    case(DBObjMapper.REGEX_CRITERIA.getObjKey()):
                        //(?i)(\w+) (IN|IS|>|<|>=|<=|=|BETWEEN) (NULL|NOT NULL|\w+ AND \w+|\(.*?\)|\w+)
                        regexString = String.format("(?i)(\\w+) (%s|%s|%s|%s|%s|%s|%s|%s) (%s|%s|\\w+ %s \\w+|\\(.*?\\)|\\w+)",
                                DBObjMapper.SPECIAL_OPERATOR_IN, DBObjMapper.SPECIAL_OPERATOR_IS,
                                DBObjMapper.OPERATOR_GREATER_THAN,DBObjMapper.OPERATOR_LESS_THAN,
                                DBObjMapper.OPERATOR_GREATER_OR_EQUAL,DBObjMapper.OPERATOR_LESS_OR_EQAUL,
                                DBObjMapper.OPERATOR_EQUAL,DBObjMapper.SPECIAL_OPERATOR_BETWEEN, DBObjMapper.CONSTRAINT_NULL.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_NOT_NULL.getSybaseKey(), DBObjMapper.OPERATOR_AND)
                        break

                    case(DBObjMapper.SPECIAL_OPERATOR_IN):
                        //(?i)(\w+) IN \(.*?\)
                        regexString = String.format("(?i)(\\w+) %s \\(.*?\\)", DBObjMapper.SPECIAL_OPERATOR_IN)
                        break

                    case(DBObjMapper.REGEX_CHECK_WRAPPER_WITH_CHILD_CRITERIA.getObjKey()):
                        //(?i)\((\w+) (IN|IS|>|<|>=|<=|=|BETWEEN) (NULL|NOT NULL|\w+ AND \w+|\(.*?\)|\w+)\)
                        regexString = String.format("(?i)\\((\\w+) (%s|%s|%s|%s|%s|%s|%s|%s) (%s|%s|\\w+ %s \\w+|\\(.*?\\)|\\w+)\\)",
                                DBObjMapper.SPECIAL_OPERATOR_IN, DBObjMapper.SPECIAL_OPERATOR_IS,
                                DBObjMapper.OPERATOR_GREATER_THAN,DBObjMapper.OPERATOR_LESS_THAN,
                                DBObjMapper.OPERATOR_GREATER_OR_EQUAL,DBObjMapper.OPERATOR_LESS_OR_EQAUL,
                                DBObjMapper.OPERATOR_EQUAL,DBObjMapper.SPECIAL_OPERATOR_BETWEEN, DBObjMapper.CONSTRAINT_NULL.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_NOT_NULL.getSybaseKey(), DBObjMapper.OPERATOR_AND)
                        break

                    default:
                        //(?i)CHECK (.*)
                        regexString = String.format("(?i)%s (.*)", DBObjMapper.CRITERIA_CHECK.getSybaseKey())
                        break
                }
                break

            case (DBObjMapper.REGEX_TYPE.getObjKey()):
                switch(parameter) {
                    case(DBObjMapper.SPECIAL_OPERATOR_IN):
                        //(?i)(\w+) (IN|IS|>|<|>=|<=|=|BETWEEN) (NULL|NOT NULL|\w+ AND \w+|\(.*?\)|\w+)
                        regexString = String.format("(?i)(\\w+) (%s|%s|%s|%s|%s|%s|%s|%s) (%s|%s|\\w+ %s \\w+|\\(.*?\\)|\\w+)",
                                DBObjMapper.SPECIAL_OPERATOR_IN, DBObjMapper.SPECIAL_OPERATOR_IS,
                                DBObjMapper.OPERATOR_GREATER_THAN,DBObjMapper.OPERATOR_LESS_THAN,
                                DBObjMapper.OPERATOR_GREATER_OR_EQUAL,DBObjMapper.OPERATOR_LESS_OR_EQAUL,
                                DBObjMapper.OPERATOR_EQUAL,DBObjMapper.SPECIAL_OPERATOR_BETWEEN, DBObjMapper.CONSTRAINT_NULL.getSybaseKey(),
                                DBObjMapper.CONSTRAINT_NOT_NULL.getSybaseKey(), DBObjMapper.OPERATOR_AND)
                        break

                    default:
                        //(?i)\(.*\)
                        regexString = '(?i)\\(.*\\)'
                        break
                }
                break

            case(DBObjMapper.REGEX_FIELD_NAME.getObjKey()):case(DBObjMapper.REGEX_VALUES.getObjKey()):
            case(DBObjMapper.REGEX_OPERATION.getObjKey()):
                //(?i)(\w+) (IN|IS|>|<|>=|<=|=|BETWEEN) (NULL|NOT NULL|\w+ AND \w+|\(.*?\)|\w+)
                regexString = String.format("(?i)(\\w+) (%s|%s|%s|%s|%s|%s|%s|%s) (%s|%s|\\w+ %s \\w+|\\(.*?\\)|\\w+)",
                        DBObjMapper.SPECIAL_OPERATOR_IN, DBObjMapper.SPECIAL_OPERATOR_IS,
                        DBObjMapper.OPERATOR_GREATER_THAN,DBObjMapper.OPERATOR_LESS_THAN,
                        DBObjMapper.OPERATOR_GREATER_OR_EQUAL,DBObjMapper.OPERATOR_LESS_OR_EQAUL,
                        DBObjMapper.OPERATOR_EQUAL,DBObjMapper.SPECIAL_OPERATOR_BETWEEN, DBObjMapper.CONSTRAINT_NULL.getSybaseKey(),
                        DBObjMapper.CONSTRAINT_NOT_NULL.getSybaseKey(), DBObjMapper.OPERATOR_AND)
                break

            case(DBObjMapper.REGEX_JOIN_OPERATOR.getObjKey()):
                //(?i)(OR|AND) childElementString
                regexString = String.format("(?i)(%s|%s) " + parameter,
                        DBObjMapper.OPERATOR_OR, DBObjMapper.OPERATOR_AND)
                break

            case(DBObjMapper.REGEX_IS_COMPOSITE.getObjKey()):
                //(?i)childElementString (OR|AND)
                regexString = String.format("(?i)" + parameter + " (%s|%s)",
                        DBObjMapper.OPERATOR_OR, DBObjMapper.OPERATOR_AND)
                break

            case(DBObjMapper.REGEX_VALUE_TYPE.getObjKey()):
                switch (parameter){
                    case(DBObjMapper.CRITERIA_VALUETYPE_INT.getDataTypeKey()):
                        //(?i)(\w+) (IN|IS|>|<|>=|<=|=|BETWEEN) (\d+ AND \d+|\d+)
                        regexString = String.format("(?i)(\\w+) (%s|%s|%s|%s|%s|%s|%s|%s) (\\d+ %s \\d+|\\d+)",
                                DBObjMapper.SPECIAL_OPERATOR_IN, DBObjMapper.SPECIAL_OPERATOR_IS,
                                DBObjMapper.OPERATOR_GREATER_THAN,DBObjMapper.OPERATOR_LESS_THAN,
                                DBObjMapper.OPERATOR_GREATER_OR_EQUAL,DBObjMapper.OPERATOR_LESS_OR_EQAUL,
                                DBObjMapper.OPERATOR_EQUAL,DBObjMapper.SPECIAL_OPERATOR_BETWEEN, DBObjMapper.OPERATOR_AND)
                        break
                }
                break

            case(DBObjMapper.REGEX_JOIN_CRITERIA.getObjKey()):
                //(?i)\[wrapper\d+\]
                regexString = "(?i)\\[wrapper\\d+\\]"
                break
        }
        return regexString
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
