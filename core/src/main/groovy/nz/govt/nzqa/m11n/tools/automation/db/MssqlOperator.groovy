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
     * 1. Drop triggers
     *
     * Function type: get list of filenames in split folder
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropTriggers(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop trigger")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop trigger")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "["+ filterEntityName[0][2] + "]"
                String filteredObjectId = "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Trigger " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\')")
                mssqlLineList.add("DROP TRIGGER " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length
        String sqlFileName = destinationDir + File.separator + "01-dropTriggers-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")


        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropTriggers'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropTriggers'. Generated ${counter} statments =============== ")
    }

    /**
     * 2. Drop SPs
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropSP(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop procedure") && !lineChecker.lineStartsWith(line, "--")) {
                entityName = lineChecker.getEntityNameFromLine(line, "drop procedure")

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "["+ filterEntityName[0][2] + "]"
                String filteredObjectId = "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  StoredProcedure " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND type in (N'P', N'PC'))")
                mssqlLineList.add("DROP PROCEDURE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length
        String sqlFileName = destinationDir + File.separator + "02-dropSP-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropSP'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropSP'. Generated ${counter} statments =============== ")
    }

    /**
     * 3. Drop Constraints
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table drop constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropCheckConstraints(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        List<String> mssqlLineList = new ArrayList<String>()

        String parentName = ''
        String filteredParentName = ''
        String entityName = ''

        int counter = 0

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "alter table")) {
                parentName = lineChecker.getEntityNameFromLine(line, "alter table")
                def filterParentName = (parentName =~ /(\w+)\.(\w+)/)
                filteredParentName = (filterParentName ? "[" + filterParentName[0][1] + "].[" + filterParentName[0][2] + "]" : "[" + parentName + "]")
            } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                entityName = lineChecker.getEntityNameFromLine(line, "add constraint")
                String filteredEntityName = "[dbo].[" + entityName + "]"

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + filteredParentName + "'))")
                mssqlLineList.add("ALTER TABLE " + filteredParentName + " DROP CONSTRAINT [" + entityName + "]")
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length
        String sqlFileName = destinationDir + File.separator + "03-dropCheckConstraints-"+ dirIndex + "-" + parentName + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }

        System.out.println("=============== End of 'generateDropCheckConstraints'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropCheckConstraints'. Generated ${counter} statments =============== ")
    }

    /**
     * 4. Drop Foreign keys
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table drop constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropForeignKeys(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropForeignKeys =============== ")


        List<String> mssqlLineList = new ArrayList<String>()
        String parentName = ''
        String filteredParentName = ''
        String entityName =''
        int counter = 0

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "alter table")) {
                parentName = lineChecker.getEntityNameFromLine(line, "alter table")
                def filterParentName = (parentName =~ /(\w+)\.(\w+)/)
                filteredParentName = (filterParentName ? "[" + filterParentName[0][1] + "].[" + filterParentName[0][2] + "]" : "[" + parentName + "]")
            } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                entityName = lineChecker.getEntityNameFromLine(line, "add constraint")
                String filteredEntityName = "[dbo].[" + entityName + "]"

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + filteredParentName + "'))")
                mssqlLineList.add("ALTER TABLE " + filteredParentName + " DROP CONSTRAINT [" + entityName + "]")
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length
        String sqlFileName = destinationDir + File.separator + "04-dropForeignKeys-"+ dirIndex + "-" + parentName + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }

        System.out.println("=============== End of 'generateDropForeignKeys'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropForeignKeys'. Generated ${counter} statments =============== ")
    }

    /**
     * 5. Drop Indices
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropIndices(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropIndices =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop index")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop index")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = filterEntityName[0][2]
                String filteredObjectId = "[dbo].["+ filterEntityName[0][1] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Index " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")

                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND " +
                        "name = N'" + filteredName + "')")
                mssqlLineList.add("DROP INDEX " + filteredName + " ON " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length
        String sqlFileName = destinationDir + File.separator + "05-dropIndices-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropIndices'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropIndices'. Generated ${counter} statments =============== ")
    }

    /**
     * 6. Drop Views
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropViews(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropViews =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop view")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop view")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "["+ filterEntityName[0][2] + "]"
                String filteredObjectId = "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  View " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\')")
                mssqlLineList.add("DROP VIEW " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "06-dropViews-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropViews'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropViews'. Generated ${counter} statments =============== ")
    }

    /**
     * 7. Drop Tables
     *
     * Function type: Get a list of tables and assign entity and parent names (no drop table scripts provided)
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropTables(String sqlInputFilesDir, String destinationDir){


        log.info("=============== Starting generateDropTables =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFilesDir, "default")
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])

        for (String sqlName : sqlList){
            entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "create")
            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredObjectId = (filterEntityName ? "["+ filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  Table " +  filteredObjectId + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND type in (N'U'))")
            mssqlLineList.add("DROP TABLE " + filteredObjectId)
            mssqlLineList.add("GO")
            counter ++
        }

        entityName = 'all'
        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "07-dropTables-" + dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropTables'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropTables'. Generated ${counter} statments =============== ")
    }

    /**
     * 8. Drop User Datatypes
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropUserDatatypes(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropUserDatatypes =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_droptype")) {

                entityName = lineChecker.getEntityNameFromLine(line, "exec")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredObjectId = (filterEntityName ? "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]" : "[dbo].["+ entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  UserDefinedDataType " + filteredObjectId + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.types at JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'" + entityName + "' AND ss.name = N'dbo')")
                mssqlLineList.add("DROP TYPE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "08-dropUserDatatypes-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropUserDatatypes'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropUserDatatypes'. Generated ${counter} statments =============== ")
    }


    /**
     * 9. Drop Rules
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropRules(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropRules =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop rule")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop rule")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredObjectId = (filterEntityName ? "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]" : "[dbo].["+ entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Rule " + filteredObjectId + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "' AND OBJECTPROPERTY(object_id, N'IsRule') = 1)")
                mssqlLineList.add("DROP RULE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "09-dropRules-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropRules'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropRules'. Generated ${counter} statments =============== ")
    }


    /**
     * 10. Drop Defaults
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropDefaults(String sqlInputFileName, String destinationDir){

        log.info("=============== Starting generateDropDefaults =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop default")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop default")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "["+ filterEntityName[0][2] + "]" : "["+ entityName + "]")
                String filteredObjectId = (filterEntityName ? "["+ filterEntityName[0][1] + "].["+ filterEntityName[0][2] + "]" : "[dbo].["+ entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Default " + filteredName  + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "' AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)")
                mssqlLineList.add("DROP RULE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter ++
            }
        }

        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "10-dropDefaults-"+ dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropDefautls'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropDefaults'. Generated ${counter} statments =============== ")
    }

    /**
     * 11. Drop Users
     *
     * Function type: get a list of create user files (no drop user statements provided)
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropUsers(String sqlInputFilesDir, String destinationDir){

        log.info("=============== Starting generateDropUsers =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFilesDir, "default")
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])

        for (String sqlName : sqlList){
            entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "create")
            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")
            String filteredEntityName = (filterEntityName ? "["+ filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  User " +  filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + entityName + "\')")
            mssqlLineList.add("DROP USER " + filteredEntityName)
            mssqlLineList.add("GO")
            counter ++
        }

        entityName = 'all'
        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "11-dropUsers-" + dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropUsers'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropUsers'. Generated ${counter} statments =============== ")
    }

    /**
     * 12. Drop Database
     *
     * Function type: No drop statement provided, hard coded
     *
     * SQL type: If exists select * from <sys.type> with match object id, drop type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateDropDatabase(String databaseName, String destinationDir){

        log.info("=============== Starting generateDropUsers =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0

        String entityName = "[" + databaseName + "]"

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
        mssqlLineList.add("/****** Object:  Database " +  entityName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
        mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + databasename + "\')")
        mssqlLineList.add("DROP DATABASE " + entityName)
        mssqlLineList.add("GO")
        counter ++

        entityName = 'all'
        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "12-dropDatabase-" + dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList){
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropDatabase'. Generated ${counter} statments =============== ")
        log.info("=============== End of 'generateDropDatabase'. Generated ${counter} statments =============== ")
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
