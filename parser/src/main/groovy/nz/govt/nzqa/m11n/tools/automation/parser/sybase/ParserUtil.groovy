package nz.govt.nzqa.m11n.tools.automation.parser.sybase

import nz.govt.nzqa.dbmigrate.mapper.DBObjMapper
import nz.govt.nzqa.m11n.tools.automation.parser.Parser

class ParserUtil {

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
                line = line.trim()
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

        new File(dbFolderName).eachDir(){
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

    String getFieldName(String splitFolderName){
        String fieldName = ''
        switch(splitFolderName){
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

    Parser getParser(String splitFolderName){
        switch (splitFolderName){
            case(DBObjMapper.FOLDER_FIELD_TABLE.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_VIEW.getSybaseKey()):
            case(DBObjMapper.FOLDER_FIELD_DEFAULT.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_USERDATATYPE.getSybaseKey()):
            case(DBObjMapper.FOLDER_FIELD_GROUP.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_USER.getSybaseKey()):
            case(DBObjMapper.FOLDER_FIELD_RULE.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_MESSAGE.getSybaseKey()):
            case(DBObjMapper.FOLDER_FIELD_FOREIGNKEY.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_CHECKCONSTRAINT.getSybaseKey()):
            case(DBObjMapper.FOLDER_FIELD_UNIQUE.getSybaseKey()):
                return new EntityParser()

            case(DBObjMapper.FOLDER_FIELD_TRIGGER.getSybaseKey()): case(DBObjMapper.FOLDER_FIELD_PROCEDURE.getSybaseKey()):
                return new UtilitiesParser()

            case(DBObjMapper.FOLDER_FIELD_INDEX.getSybaseKey()):
                return new IndexParser()
        }
    }

    String getSchema(File firstFile){
        String schema = ''

        firstFile.eachLine { String line ->
            def result = (line.trim() =~ /(?i)USE (\S+)/)
            if(result){
                schema = result[0][1]
                return schema
            }

        }
        return schema
    }
}
