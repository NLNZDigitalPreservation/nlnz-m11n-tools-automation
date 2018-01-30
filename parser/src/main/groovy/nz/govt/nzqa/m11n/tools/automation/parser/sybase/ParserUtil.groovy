package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.m11n.tools.automation.parser.Parser
import nz.govt.nzqa.m11n.tools.automation.regex.SybaseRegexBuilder

class ParserUtil {


    private static final CLOSE_BRACKET = ")"
    private static final OPEN_BRACKET = "("

    /**
     * Read the file line by line and extract lines between 'go' as a statement
     * @param file
     * @return
     */
    List<String> getStatementsFromFile(File file) {

        List<String> statements = new ArrayList<String>()
        boolean newStatement = false
        String statement = ''

        file.eachLine { String line ->
            if (line.trim()) {
                line = line.trim().replaceAll(/\s\s+/, ' ')
                if (line.equalsIgnoreCase(DBObjMapper.GO.getSybaseKey())) {
                    statements.add(statement)
                    newStatement = true
                } else if (line.startsWith(DBObjMapper.USE.getSybaseKey())) {
                    statement = line
                } else if (newStatement) {
                    newStatement = false
                    statement = line
                } else {
                    statement += " " + line
                    statement = statement.trim()
                }

            }
        }

        return statements
    }

    List<String> getAllFolderNames(String dbFolderName) {

        List<String> names = new ArrayList<>()

        new File(dbFolderName).eachDir() {
            dir -> names.add(dir.getName())
        }

        return names.sort()
    }

    List<String> getSqlFilesInDir(String dir) {

        List<String> names = []

        new File(dir).eachFileMatch(~/.*.sql/) {
            file -> names.add(file.getName())
        }

        return names.sort() as String[]
    }

    String getFieldName(String splitFolderName) {
        String fieldName = ''
        switch (splitFolderName) {
            case (DBObjMapper.FOLDER_FIELD_DEFAULT.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_DEFAULT.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_USERDATATYPE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_USERDATATYPE.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_TABLE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_TABLE.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_PRIMARYKEY.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_PRIMARYKEY.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_FOREIGNKEY.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_FOREIGNKEY.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_CHECKCONSTRAINT.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_CHECKCONSTRAINT.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_UNIQUE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_UNIQUE.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_INDEX.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_INDEX.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_VIEW.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_VIEW.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_TRIGGER.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_TRIGGER.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_PROCEDURE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_PROCEDURE.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_FUNCTION.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_FUNCTION.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_USER.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_USER.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_GROUP.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_GROUP.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_RULE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_RULE.getObjKey()
                break

            case (DBObjMapper.FOLDER_FIELD_MESSAGE.getSybaseKey()):
                fieldName = DBObjMapper.FOLDER_FIELD_MESSAGE.getObjKey()
                break
        }
        return fieldName
    }

    Parser getParser(String splitFolderName) {
        switch (splitFolderName) {
            case (DBObjMapper.FOLDER_FIELD_TABLE.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_VIEW.getSybaseKey()):
            case (DBObjMapper.FOLDER_FIELD_DEFAULT.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_USERDATATYPE.getSybaseKey()):
            case (DBObjMapper.FOLDER_FIELD_GROUP.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_USER.getSybaseKey()):
            case (DBObjMapper.FOLDER_FIELD_RULE.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_MESSAGE.getSybaseKey()):
            case (DBObjMapper.FOLDER_FIELD_FOREIGNKEY.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_CHECKCONSTRAINT.getSybaseKey()):
            case (DBObjMapper.FOLDER_FIELD_UNIQUE.getSybaseKey()):
                return new EntityParser()

            case (DBObjMapper.FOLDER_FIELD_TRIGGER.getSybaseKey()): case (DBObjMapper.FOLDER_FIELD_PROCEDURE.getSybaseKey()):
                return new UtilitiesParser()

            case (DBObjMapper.FOLDER_FIELD_INDEX.getSybaseKey()):
                return new IndexParser()
        }
    }

    String getSchema(File firstFile) {
        String schema = ''

        firstFile.eachLine { String line ->
            def result = (line.trim() =~ /(?i)USE (\S+)/)
            if (result) {
                schema = result[0][1]
                return schema
            }

        }
        return schema
    }


    String getWrapperString(String workingSqlStatement) {
        SybaseRegexBuilder regexBuilder = new SybaseRegexBuilder()
        String childCriteriaInOperatorRegex = regexBuilder.buildCriteriaRegex(DBObjMapper.REGEX_ACTION_CRITERIA.getObjKey(),
                DBObjMapper.SPECIAL_OPERATOR_IN)

        def opInResult = (workingSqlStatement =~ childCriteriaInOperatorRegex)

        int closeBracketIndex = workingSqlStatement.indexOf(CLOSE_BRACKET)
        int openBracketIndex = closeBracketIndex

        if (opInResult) {
            return OPEN_BRACKET + opInResult[0][0] + CLOSE_BRACKET
        }

        boolean openBracketFound = false

        while (!openBracketFound && openBracketIndex > 0) {
            openBracketIndex--

            if (workingSqlStatement[openBracketIndex] == OPEN_BRACKET) {
                openBracketFound = true
            }
        }
        String wrapperString = (openBracketFound ? workingSqlStatement.substring(openBracketIndex, closeBracketIndex + 1) :
                workingSqlStatement.substring(0, closeBracketIndex + 1))

        return wrapperString
    }

    String getOperatorObjKeyFromRawString(String operatorString){
        String cleanOperator = operatorString.trim()
        String key = cleanOperator

        switch(cleanOperator.toUpperCase()){
            case(DBObjMapper.OPERATOR_OR):
                key = DBObjMapper.OPERATOR_OR
                break

            case(DBObjMapper.OPERATOR_AND):
                key = DBObjMapper.OPERATOR_AND
                break

            case(DBObjMapper.OPERATOR_NOT):
                key = DBObjMapper.OPERATOR_NOT
                break

            case(DBObjMapper.SPECIAL_OPERATOR_IS):
                key = DBObjMapper.SPECIAL_OPERATOR_IS
                break

            case(DBObjMapper.SPECIAL_OPERATOR_IN):
                key = DBObjMapper.SPECIAL_OPERATOR_IN
                break

            case(DBObjMapper.SPECIAL_OPERATOR_BETWEEN):
                key = DBObjMapper.SPECIAL_OPERATOR_BETWEEN
                break
        }

        return key
    }

    String getActionObjKeyFromRawString(String actionString){

        String cleanAction = actionString.trim()
        String action = cleanAction

        switch(cleanAction.toUpperCase()){
            case(DBObjMapper.ACTION_DROP.getSybaseKey()):
                action = DBObjMapper.ACTION_DROPONLY.getObjKey()
                break

            case(DBObjMapper.ACTION_CREATE.getSybaseKey()):
                action = DBObjMapper.ACTION_CREATE.getObjKey()
                break

            case(DBObjMapper.ACTION_ALTER.getSybaseKey()):
                action = DBObjMapper.ACTION_ALTER.getObjKey()
                break

            case(DBObjMapper.ACTION_ADD.getSybaseKey()):
                action = DBObjMapper.ACTION_ADD.getObjKey()
                break

            case(DBObjMapper.ACTION_SELECT.getSybaseKey()):
                action = DBObjMapper.ACTION_SELECT.getObjKey()
                break

            case(DBObjMapper.ACTION_INSERT.getSybaseKey()):
                action = DBObjMapper.ACTION_INSERT.getObjKey()
                break

            case(DBObjMapper.ACTION_UPDATE.getSybaseKey()):
                action = DBObjMapper.ACTION_UPDATE.getObjKey()
                break

            case(DBObjMapper.ACTION_DELETE.getSybaseKey()):
                action = DBObjMapper.ACTION_DELETE.getObjKey()
                break

            case(DBObjMapper.ACTION_TRUNCATE.getSybaseKey()):
                action = DBObjMapper.ACTION_TRUNCATE.getObjKey()
                break

            case(DBObjMapper.ACTION_TRANSFER.getSybaseKey()):
                action = DBObjMapper.ACTION_TRANSFER.getObjKey()
                break

            case(DBObjMapper.ACTION_REFERENCES.getSybaseKey()):
                action = DBObjMapper.ACTION_REFERENCES.getObjKey()
                break
        }
        return action
    }

    String getTypeObjKeyFromRawString(String typeString){

        String cleanType = typeString.trim()
        String type = cleanType

        switch(cleanType.toUpperCase()){

            //Entity
            case(DBObjMapper.ENTITY_TABLE.getSybaseKey()):
                type = DBObjMapper.ENTITY_TABLE.getObjKey()
                break

            case(DBObjMapper.ENTITY_VIEW.getSybaseKey()):
                type = DBObjMapper.ENTITY_VIEW.getObjKey()
                break

            case(DBObjMapper.ENTITY_DEFAULT.getSybaseKey()):
                type = DBObjMapper.ENTITY_DEFAULT.getObjKey()
                break

            case(DBObjMapper.ENTITY_DATATYPE.getSybaseKey()):
                type = DBObjMapper.ENTITY_DATATYPE.getObjKey()
                break

            case(DBObjMapper.ENTITY_GROUP.getSybaseKey()):
                type = DBObjMapper.ENTITY_GROUP.getObjKey()
                break

            case(DBObjMapper.ENTITY_USER.getSybaseKey()):
                type = DBObjMapper.ENTITY_USER.getObjKey()
                break

            case(DBObjMapper.ENTITY_RULE.getSybaseKey()):
                type = DBObjMapper.ENTITY_RULE.getObjKey()
                break

            case(DBObjMapper.ENTITY_MESSAGE.getSybaseKey()):
                type = DBObjMapper.ENTITY_MESSAGE.getObjKey()
                break

            case(DBObjMapper.ENTITY_KEY.getSybaseKey()):
                type = DBObjMapper.ENTITY_KEY.getObjKey()
                break

            case(DBObjMapper.ENTITY_CONSTRAINT.getSybaseKey()):
                type = DBObjMapper.ENTITY_CONSTRAINT.getObjKey()
                break

            //Entity - datatype
            case(DBObjMapper.ACTION_ADD_DATATYPE.getSybaseKey()):
                type = DBObjMapper.ACTION_ADD_DATATYPE.getObjKey()
                break

            case(DBObjMapper.ACTION_DROP_DATATYPE.getSybaseKey()):
                type = DBObjMapper.ACTION_DROP_DATATYPE.getObjKey()
                break

            //Entity - message
            case(DBObjMapper.ACTION_ADD_MESSAGE.getSybaseKey()):
                type = DBObjMapper.ACTION_ADD_MESSAGE.getObjKey()
                break

            //Entity - user
            case(DBObjMapper.ACTION_ADD_USER.getSybaseKey()):
                type = DBObjMapper.ACTION_ADD_USER.getObjKey()
                break

            //Entity - group
            case(DBObjMapper.ACTION_ADD_GROUP.getSybaseKey()):
                type = DBObjMapper.ACTION_ADD_GROUP.getObjKey()
                break

            //Attribute
            case(DBObjMapper.KEY_COLUMN.getSybaseKey()):
                type = DBObjMapper.KEY_COLUMN.getObjKey()
                break

            //Index
            case(DBObjMapper.INDEX_CLUSTERED.getSybaseKey()):
                type = DBObjMapper.INDEX_CLUSTERED.getObjKey()
                break

            case(DBObjMapper.INDEX_NONCLUSTERED.getSybaseKey()):
                type = DBObjMapper.INDEX_NONCLUSTERED.getObjKey()
                break

            //Constrains
            case(DBObjMapper.CONSTRAINT_PRIMARYKEY.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_PRIMARYKEY.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_FOREIGNKEY.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_FOREIGNKEY.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_UNIQUE.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_UNIQUE.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_CHECK.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_CHECK.getObjKey()
                break

            //Constraint - subType
            case(DBObjMapper.CONSTRAINT_NULL.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_NULL.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_NOT_NULL.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_NOT_NULL.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_CLUSTERED.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_CLUSTERED.getObjKey()
                break

            case(DBObjMapper.CONSTRAINT_NONCLUSTERED.getSybaseKey()):
                type = DBObjMapper.CONSTRAINT_NONCLUSTERED.getObjKey()
                break

            //Criteria
            case(DBObjMapper.CRITERIA_CHECK.getObjKey()):
                type = DBObjMapper.CRITERIA_CHECK.getObjKey()
                break

            case(DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey()):
                type = DBObjMapper.CRITERIA_CHECKWRAPPER.getObjKey()
                break

            //Utilities
            case(DBObjMapper.ENTITY_PROCEDURE.getSybaseKey()):
                type = DBObjMapper.ENTITY_PROCEDURE.getObjKey()
                break

            case(DBObjMapper.ENTITY_TRIGGER.getSybaseKey()):
                type = DBObjMapper.ENTITY_TRIGGER.getObjKey()
                break

            case(DBObjMapper.ENTITY_FUNCTION.getSybaseKey()):
                type = DBObjMapper.ENTITY_FUNCTION.getObjKey()
                break

            //Relation
            case(DBObjMapper.KEY_GRANT.getSybaseKey()):
                type = DBObjMapper.KEY_GRANT.getObjKey()
                break

        }
        return type
    }

    String getParamInOutFromRawString(String output){

        String cleanInOutString = output.replaceAll("\\s", "")
        String inOut = DBObjMapper.PARAM_INPUT.getObjKey()

        switch(cleanInOutString.toUpperCase()) {
            case(DBObjMapper.PARAM_OUTPUT.getSybaseKey()):
                inOut = DBObjMapper.PARAM_OUTPUT.getObjKey()
                break

            case(DBObjMapper.PARAM_INPUT_AND_OUTPUT.getSybaseKey()):
                inOut = DBObjMapper.PARAM_INPUT_AND_OUTPUT.getObjKey()
                break
        }

        return inOut
    }
}
