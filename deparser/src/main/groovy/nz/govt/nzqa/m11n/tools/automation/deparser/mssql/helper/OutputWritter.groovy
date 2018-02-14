package nz.govt.nzqa.m11n.tools.automation.deparser.mssql.helper

class OutputWritter {
    String basePath
    String schema
    File file

    String mssqlBasePath
    String mssqlTablePath
    String mssqlKeyPath
    String mssqlConstraintPath
    String mssqlViewPath
    String mssqlDefaultPath
    String mssqlDataTypePath
    String mssqlGroupPath
    String mssqlUserPath
    String mssqlRulePath
    String mssqlMessagePath
    String mssqlIndexPath
    String mssqlProcedurePath
    String mssqlFunctionPath
    String mssqlTriggerPath
    String mssqlEntireSchema


    OutputWritter (String basePath1, String schema1) {
        this.basePath = basePath1
        this.schema = schema1
        initialize()
    }

    void initialize() {
        mssqlBasePath = basePath + File.separator + "mssql_output"
        mssqlTablePath = mssqlBasePath + File.separator + "Table"
        mssqlKeyPath = mssqlBasePath + File.separator + "Key"
        mssqlConstraintPath = mssqlBasePath + File.separator + "Constraint"
        mssqlViewPath = mssqlBasePath + File.separator + "View"
        mssqlDefaultPath = mssqlBasePath + File.separator + "Default"
        mssqlDataTypePath = mssqlBasePath + File.separator + "CustomDataType"
        mssqlGroupPath = mssqlBasePath + File.separator + "Role"
        mssqlUserPath = mssqlBasePath + File.separator + "User"
        mssqlRulePath = mssqlBasePath + File.separator + "Rule"
        mssqlMessagePath = mssqlBasePath + File.separator + "Message"
        mssqlProcedurePath = mssqlBasePath + File.separator + "Procedure"
        mssqlFunctionPath = mssqlBasePath + File.separator + "Function"
        mssqlTriggerPath = mssqlBasePath + File.separator + "Trigger"
        mssqlIndexPath = mssqlBasePath + File.separator + "Index"
        mssqlEntireSchema = mssqlBasePath + File.separator + "EntireSchema"

        file = new File(basePath)
        if (file.exists()) {
            createFolder(mssqlBasePath)
        } else {
            createFolder(basePath)
            createFolder(mssqlBasePath)
        }
    }

    void createFolder(String folderName) {
        file = new File(folderName)
        if (!file.exists()) {
            file.mkdir()
        }
    }

    boolean createFile(String fileName) {
        file = new File(fileName)
        if (!file.exists()) {
            file.createNewFile()
            return true
        }

        return !MSSQLConstants.OVERRIDE_FILE
    }

    private void createObjFile(String folderPath, String fileNamePart, String action, String content) {
        String fileName = folderPath + File.separator + schema + "-" + fileNamePart + "_" + action + ".sql"

        createFolder(folderPath)

        String content2Write = "USE [$schema] " + MSSQLConstants.CLOSE_BLOCK + "\n" + content

        if (createFile(fileName)) {
            file.write content2Write
            //println file.text
        } else {
            file.append "\n\n---------------------------------------------\n\n"
            file.append content2Write
        }

    }

    public void createConsolidatedSchema(String fileNamePart, String action, String content) {
        createObjFile(mssqlEntireSchema, fileNamePart, action, content)
    }

    public void createTableFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlTablePath, fileNamePart, action, content)
    }

    public void createKeyFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlKeyPath, fileNamePart, action, content)
    }

    public void createConstraintFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlConstraintPath, fileNamePart, action, content)
    }

    public void createViewFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlViewPath, fileNamePart, action, content)
    }

    public void createDefaultFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlDefaultPath, fileNamePart, action, content)
    }

    public void createCustomDataTypeFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlDataTypePath, fileNamePart, action, content)
    }

    public void createGroupFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlGroupPath, fileNamePart, action, content)
    }

    public void createUserFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlUserPath, fileNamePart, action, content)
    }

    public void createRuleFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlRulePath, fileNamePart, action, content)
    }

    public void createMessageFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlMessagePath, fileNamePart, action, content)
    }

    public void createProcedureFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlProcedurePath, fileNamePart, action, content)
    }

    public void createFunctionFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlFunctionPath, fileNamePart, action, content)
    }

    public void createTriggerFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlTriggerPath, fileNamePart, action, content)
    }

    public void createIndexFile(String fileNamePart, String action, String content) {
        createObjFile(mssqlIndexPath, fileNamePart, action, content)
    }

}
