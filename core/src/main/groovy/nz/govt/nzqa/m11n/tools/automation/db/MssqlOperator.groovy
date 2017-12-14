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
    FilenameExtractor filenameExtractor = new FilenameExtractor()


    String camelCase(String word) {
        return word.substring(0, 1).toUpperCase() + word.substring(1)
    }

    def generateTables(String[] sqlList, String originalFilePath, String destinationDir){

        log.info("=============== Starting generateTables() =============== ")

        String outputDir = destinationDir + File.separator + "generateTables"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        int counter = 0

        for (String sqlName : sqlList){
            String entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "tables")
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
        String[] assemblyList = filenameExtractor.getAssemblyFilesInDir(assemblyFileFolderDir)
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

    /**
     * Drop triggers
     *
     * Function type: get list of filenames in split folder
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropTriggers(String splitTriggersFolderDir, String destinationDir){

        log.info("=============== Starting generateDropTriggers =============== ")

        String sqlFileName = destinationDir + File.separator + "01-dropTriggers.sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(splitTriggersFolderDir)
        System.out.println("Before:" + sqlList.size())
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])
        System.out.println("After:" + sqlList.size())

        List<String> mssqlLineList = new ArrayList<String>()

        for (String sqlName : sqlList){
            String entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "drop")

            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredEntityName = (filterEntityName ? "["+ filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

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

    /**
     * Drop SPs
     *
     * Function type: get list of filenames in split folder
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropSP(String splitSPFolderDir, String destinationDir){

        log.info("=============== Starting generateDropSP =============== ")

        String sqlFileName = destinationDir + File.separator + "02-dropSP.sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(splitSPFolderDir, "drop")
        System.out.println("Before:" + sqlList.size())
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])
        System.out.println("After:" + sqlList.size())

        List<String> mssqlLineList = new ArrayList<String>()

        for (String sqlName : sqlList){
            String entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "drop")

            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredEntityName = (filterEntityName ? "["+ filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND type in (N'P', N'PC'))")
            mssqlLineList.add("DROP PROCEDURE " + filteredEntityName)
            mssqlLineList.add("GO")
        }

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        log.info("=============== End of 'generateDropSP'. Generated ${sqlList.size()} statments =============== ")
    }

    /**
     * Drop Constraints
     *
     * Function type: get list of files in split folder, parse and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table drop constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropCheckConstraints(String splitCheckConstraintsFolderDir, String destinationDir){

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        String sqlFileName = destinationDir + File.separator + "03-dropCheckConstraints.sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(splitCheckConstraintsFolderDir, "default")
        List<String> mssqlLineList = new ArrayList<String>()

        for (String sqlName : sqlList){
            String entityName = ''
            String filteredEntityName = ''
            String parentName = ''
            String filteredParentName = ''
            def filterParentName = ''


            new File(splitForeignKeysFolderDir + File.separator + sqlName).eachLine { String line ->
                if (lineChecker.lineStartsWith(line, "alter table")) {

                    parentName = lineChecker.getEntityNameFromLine(line, "alter table")
                    filterParentName = (parentName =~ /(\w+)\.(\w+)/)
                    filteredParentName = (filterParentName ? "[" + filterParentName[0][1] + "].[" + filterParentName[0][2] + "]" : "[" + parentName + "]")
                } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                    entityName = lineChecker.getEntityNameFromLine(line, "add constraint")
                    filteredEntityName = "[dbo].[" + entityName + "]"
                }
            }

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND " +
                    "parent_object_id = OBJECT_ID(N'" + filteredParentName + "'))")
            mssqlLineList.add("ALTER TABLE " + filteredParentName + " DROP CONSTRAINT [" + entityName + "]")
            mssqlLineList.add("GO")
        }

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }

        log.info("=============== End of 'generateDropSP'. Generated ${sqlList.size()} statments =============== ")
    }

    /**
     * Drop Foreign keys
     *
     * Function type: get list of files in split folder, parse and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table drop constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropForeignKeys(String splitForeignKeysFolderDir, String destinationDir){

        log.info("=============== Starting generateDropForeignKeys =============== ")

        String sqlFileName = destinationDir + File.separator + "04-dropCForeignKeys.sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(splitForeignKeysFolderDir, "default")
        List<String> mssqlLineList = new ArrayList<String>()

        for (String sqlName : sqlList){
            String entityName = ''
            String filteredEntityName = ''
            String parentName = ''
            String filteredParentName = ''
            def filterParentName = ''


            new File(splitForeignKeysFolderDir + File.separator + sqlName).eachLine { String line ->
                if (lineChecker.lineStartsWith(line, "alter table")) {

                    parentName = lineChecker.getEntityNameFromLine(line, "alter table")
                    filterParentName = (parentName =~ /(\w+)\.(\w+)/)
                    filteredParentName = (filterParentName ? "[" + filterParentName[0][1] + "].[" + filterParentName[0][2] + "]" : "[" + parentName + "]")
                } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                    entityName = lineChecker.getEntityNameFromLine(line, "add constraint")
                    filteredEntityName = "[dbo].[" + entityName + "]"
                }
            }

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND " +
                    "parent_object_id = OBJECT_ID(N'" + filteredParentName + "'))")
            mssqlLineList.add("ALTER TABLE " + filteredParentName + " DROP CONSTRAINT [" + entityName + "]")
            mssqlLineList.add("GO")
        }

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }

        log.info("=============== End of 'generateDropSP'. Generated ${sqlList.size()} statments =============== ")
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
