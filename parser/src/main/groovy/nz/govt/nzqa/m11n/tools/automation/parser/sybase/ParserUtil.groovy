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
        String wrapperString = ''
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
        wrapperString = (openBracketFound ? workingSqlStatement.substring(openBracketIndex, closeBracketIndex + 1) :
                workingSqlStatement.substring(0, closeBracketIndex + 1))

        return wrapperString
    }

    String getOperatorObjKeyfromRawString(String operatorString){
        String cleanOperator = operatorString.replaceAll("\\s", "").toUpperCase()
        String key = cleanOperator

        switch(cleanOperator){
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

    String getActionObjKeyfromRawString(String actionString){

        String cleanAction = actionString.replaceAll("\\s", "").toUpperCase()
        String action = cleanAction

        switch(cleanAction){
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
}
