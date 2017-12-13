package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.db.LineChecker
import nz.govt.nzqa.m11n.tools.automation.file.FilenameExtractor

import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Paths
import java.text.SimpleDateFormat
import java.util.stream.Collectors

@Slf4j
class MssqlOperator {
    // Commands
    String USE= "USE []"
    String GO = "GO "
    String CREATE = "CREATE "
    String DROP = "DROP "
    String EXEC = "EXEC "
    String IF = "IF "
    String IF_OBJECT_ID = "IF OBJECT_ID"
    String ALTER = "ALTER "

    // Entity types
    String TABLE = "TABLE "
    String PROCEDURE = "PROCEDURE "
    String TRIGGER = "TRIGGER "

    // Settings
    String SET_ANSI_NULL_ON = "SET ANSI_NULLS ON"
    String SET_QUOTED_IDENTIFIER_ON = "SET QUOTED_IDENTIFIER ON"
    String SET_ANSI_PADDING_ON = "SET ANSI_PADDING ON"


    LineChecker lineChecker = new LineChecker()

    String camelCase(String word) {
        return word.substring(0, 1).toUpperCase() + word.substring(1)
    }

    String getSqlTypeFromSybaseFolderName(String sybaseFolderName){

//        System.out.println("sybaseFolderName: " + sybaseFolderName)
        String sqlType = ''

        def regexFilter = /split(\w+)/
//        System.out.println("after regex: " + (sybaseFolderName =~ /$regexFilter/)[0])
        String baseName = ((sybaseFolderName =~ /$regexFilter/)[0][1])
//        System.out.println("folder Name: " + (sybaseFolderName =~ /$regexFilter/)[0][1])

        sqlType = camelCase(baseName)

//        System.out.println("sqlType " + sqlType)
        return sqlType
    }

    String getEntityNameFromSybaseSplitSqlName(String sybaseSplitSqlName){

//        System.out.println("sybaseSplitSqlName: " + sybaseSplitSqlName)
        String name = ''

        def regexFilter = /split(\w+)-(\d+)-(\w+.*).sql/
//        System.out.println("after regex: " + (sybaseSplitSqlName =~ /$regexFilter/)[0])
        name = ((sybaseSplitSqlName =~ /$regexFilter/)[0][3])
//        System.out.println("name: " + (sybaseSplitSqlName =~ /$regexFilter/)[0][3])

        return name
    }

    String[] getSqlScriptsInDir(String dir) {
        def names = []

        new File(dir).eachFileMatch(~/split(\w+)-(\d+)-(\w+.*).sql/) {
            file -> names.add(file.getName())
        }
        return names.sort()
    }


    String[] getAssemblyFilesInDir(String dir) {
        def names = []

        new File(dir).eachFileMatch(~/(\d+).*.sql/) {
            file -> names.add(file.getName())
        }
        return names.sort()
    }

    def generateTables(String[] sqlList, String originalFilePath, String destinationDir){

        log.info("=============== Starting generateTables() =============== ")

        String outputDir = destinationDir + File.separator + "generateTables"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        int counter = 0

        for (String sqlName : sqlList){
            String entityName = getEntityNameFromSybaseSplitSqlName(sqlName)
            String tableFileName = outputDir + File.separator + "mssqlTable-" + counter + "-" + entityName + ".sql"
            System.out.println("Table file name: " + tableFileName)
            new File(tableFileName).createNewFile()
            def mssqlFile = new File(tableFileName)

            List<String> sybaseLineList = Files.readAllLines(Paths.get(originalFilePath), StandardCharsets.UTF_8)
                    .stream().filter({str -> !str.trim().isEmpty()}).collect(Collectors.toList())

            // Generate scripts
            List<String> mssqlLineList = getLineList(entityName, sybaseLineList)

            for (String line : mssqlLineList){
                mssqlFile << line + '\r\n'
            }

            counter ++
        }
    }

    /**
     * Main
     */

    def generateMssqlScript(String sybaseSplitFolderRootDir, String destinationDir){

        // Create a folder for assembly files
        String assemblyFileFolderDir = destinationDir + File.separator + "tmp"
        new File(assemblyFileFolderDir).mkdir()

        // Generate different sections of the mssql file
        generateDropTriggers(sybaseSplitFolderRootDir + File.separator + "splitTriggers", assemblyFileFolderDir)

        // Create a new file. Everything will be weaved into this
        String finalMssqlScriptName = destinationDir + File.separator + "mssql-result.sql"
        new File(finalMssqlScriptName).createNewFile()
        File sqlFile = new File(finalMssqlScriptName)
        sqlFile << "USE [eqa_prod]" + '\r\n'
        sqlFile << "GO" + '\r\n'

        // Reconstruct
        String[] assemblyList = getAssemblyFilesInDir(assemblyFileFolderDir)
        for (String assemblyFileName : assemblyList){
            List<String> assemblyFileLineList = Files.readAllLines(Paths.get(assemblyFileFolderDir + File.separator + assemblyFileName), StandardCharsets.UTF_8)

            for (String line : assemblyFileLineList){
                sqlFile << line + '\r\n'
            }
        }
    }

    /**
     * Functions for generating drop statement files. Each function generates a .sql for that section then all files are
     * weaved together in the main function
     */

    def generateDropTriggers(String splitTriggersFolderDir, String destinationDir){

        log.info("=============== Starting generateDropTriggers =============== ")

        String sqlFileName = destinationDir + File.separator + "01-dropTriggers.sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        String[] sqlList = getSqlScriptsInDir(splitTriggersFolderDir)
        List<String> mssqlLineList = new ArrayList<String>()

        for (String sqlName : sqlList){
            String entityName = getEntityNameFromSybaseSplitSqlName(sqlName)

            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredEntityName = (filterEntityName ? "["+ filterEntityName[0][1] + "][" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  Trigger " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\')")
            mssqlLineList.add("DROP TRIGGER " + filteredEntityName)
            mssqlLineList.add("GO")
        }

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        log.info("=============== End of 'generateDropTriggers'. Generated ${sqlList.size()} statments =============== ")
    }

    List<String> generateDropSPs(){

    }

    List<String>  generateDropConstriants(){

    }

    List<String>  generateDropForeignKeys(){

    }

    List<String>  generateDropViews(){

    }

    List<String>  generateDropTables(){

    }

    List<String>  generateDropUserDatatypes(){

    }

    List<String>  generateDropRules(){

    }

    List<String>  generateDropDefaults(){

    }

    /**
     * Functions for generating create statements
     */

    List<String> generateCreateTriggers(){

    }

    List<String> generateCreateSPs(){

    }

    List<String>  generateCreateConstriants(){

    }

    List<String>  generateCreateForeignKeys(){

    }

    List<String>  generateCreateViews(){

    }

    List<String>  generateCreateTables(){

    }

    List<String>  generateCreateUserDatatypes(){

    }

    List<String>  generateCreateRules(){

    }

    List<String>  generateCreateDefaults(){

    }




    List<String> getLineList(String entityName, List<String> sybaseLineList){
        List<String> lineList = []

        // Check if entity name is of <dbo>.<name>
        def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
        String tableName = (filterEntityName ? "["+ filterEntityName[0][1] + "][" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

        // Append headers
        lineList.add(USE.replace("[]", "[eqa_prod]"))
        lineList.add(GO)
        lineList.add(DROP + TABLE + tableName)
        lineList.add(GO)
        lineList.add(SET_ANSI_NULL_ON)
        lineList.add(GO)
        lineList.add(SET_QUOTED_IDENTIFIER_ON)
        lineList.add(GO)
        lineList.add(SET_ANSI_PADDING_ON)
        lineList.add(GO)

        boolean inCreateStatment = false

        for (String line : sybaseLineList){
            if (lineChecker.lineStartsWith(line, "create")) {
                lineList.add(CREATE + TABLE + entityName)
                inCreateStatment = true
            }

//            if (inCreateStatment){
//
//            }
        }

        return lineList
    }
}
