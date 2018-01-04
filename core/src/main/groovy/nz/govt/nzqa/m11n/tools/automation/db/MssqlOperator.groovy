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
//    // Commands
//    String USE= "USE []"
//    String GO = "GO "
//    String CREATE = "CREATE "
//    String DROP = "DROP "
//    String EXEC = "EXEC "
//    String IF = "IF "
//    String IF_OBJECT_ID = "IF OBJECT_ID"
//    String ALTER = "ALTER "
//
//    // Entity types
//    String TABLE = "TABLE "
//    String PROCEDURE = "PROCEDURE "
//    String TRIGGER = "TRIGGER "
//
//    // Settings
//    String SET_ANSI_NULL_ON = "SET ANSI_NULLS ON"
//    String SET_QUOTED_IDENTIFIER_ON = "SET QUOTED_IDENTIFIER ON"
//    String SET_ANSI_PADDING_ON = "SET ANSI_PADDING ON"


    LineChecker lineChecker = new LineChecker()
    FilenameExtractor filenameExtractor = new FilenameExtractor()

    String getBracketedColumnType(String columnName, String sybaseSplitUserDatatypesDir) {
        // Doesn't matter if use drop or add 
        String[] userDefinedDatatypeList = filenameExtractor.getAllEntityNameFromSybaseSplitSqlName(sybaseSplitUserDatatypesDir, "add")
        return (userDefinedDatatypeList.contains(columnName) ? "[dbo].[" + columnName + "]" : (columnName.contains("(") ? "[" + columnName.replaceAll("\\(", "]\\(") : "[" + columnName + "]"))
    }

    String camelCase(String word) {
        return word.substring(0, 1).toUpperCase() + word.substring(1)
    }

    /**
     * Main
     */

    def generateMssqlScript(String sybaseSplitFolderRootDir, String destinationDir) {

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
        for (String assemblyFileName : assemblyList) {
            List<String> assemblyFileLineList = Files.readAllLines(Paths.get(assemblyFileFolderDir + File.separator + assemblyFileName), StandardCharsets.UTF_8)

            for (String line : assemblyFileLineList) {
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
    def generateDropTriggers(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop trigger")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop trigger")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "[" + filterEntityName[0][2] + "]"
                String filteredObjectId = "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Trigger " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\')")
                mssqlLineList.add("DROP TRIGGER " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "01-dropTriggers-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")


            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropTriggers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropTriggers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropSP(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropCheckConstraints =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop procedure") && !lineChecker.lineStartsWith(line, "--")) {
                entityName = lineChecker.getEntityNameFromLine(line, "drop procedure")

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "[" + filterEntityName[0][2] + "]"
                String filteredObjectId = "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  StoredProcedure " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND type in (N'P', N'PC'))")
                mssqlLineList.add("DROP PROCEDURE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "02-dropSP-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropSP'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropSP'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropCheckConstraints(String sqlInputFileName, String destinationDir) {

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
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "03-dropCheckConstraints-" + dirIndex + "-" + parentName + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of 'generateDropCheckConstraints'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropCheckConstraints'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropForeignKeys(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropForeignKeys =============== ")


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
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'" + filteredEntityName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + filteredParentName + "'))")
                mssqlLineList.add("ALTER TABLE " + filteredParentName + " DROP CONSTRAINT [" + entityName + "]")
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "04-dropForeignKeys-" + dirIndex + "-" + parentName + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of 'generateDropForeignKeys'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropForeignKeys'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropIndices(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropIndices =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop index")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop index")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = filterEntityName[0][2]
                String filteredObjectId = "[dbo].[" + filterEntityName[0][1] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Index " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")

                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND " +
                        "name = N'" + filteredName + "')")
                mssqlLineList.add("DROP INDEX " + filteredName + " ON " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "05-dropIndices-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropIndices'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropIndices'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropViews(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropViews =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop view")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop view")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredName = "[" + filterEntityName[0][2] + "]"
                String filteredObjectId = "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]"

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  View " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\')")
                mssqlLineList.add("DROP VIEW " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "06-dropViews-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropViews'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropViews'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropTables(String sqlInputFilesDir, String destinationDir) {


        log.info("=============== Starting generateDropTables =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFilesDir, "default")
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])

        for (String sqlName : sqlList) {
            entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "create")
            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  Table " + filteredObjectId + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\') AND type in (N'U'))")
            mssqlLineList.add("DROP TABLE " + filteredObjectId)
            mssqlLineList.add("GO")
            counter++
        }

        if (mssqlLineList.size() > 0) {
            entityName = 'all'
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "07-dropTables-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropTables'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropTables'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropUserDatatypes(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropUserDatatypes =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_droptype")) {

                entityName = lineChecker.getEntityNameFromLine(line, "exec")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  UserDefinedDataType " + filteredObjectId + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.types at JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'" + entityName + "' AND ss.name = N'dbo')")
                mssqlLineList.add("DROP TYPE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "08-dropUserDatatypes-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropUserDatatypes'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropUserDatatypes'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropRules(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropRules =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop rule")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop rule")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)

                String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Rule " + filteredObjectId + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "' AND OBJECTPROPERTY(object_id, N'IsRule') = 1)")
                mssqlLineList.add("DROP RULE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "09-dropRules-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropRules'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropRules'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropDefaults(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateDropDefaults =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "drop default")) {

                entityName = lineChecker.getEntityNameFromLine(line, "drop default")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")
                String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Default " + filteredName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "' AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)")
                mssqlLineList.add("DROP RULE " + filteredObjectId)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "10-dropDefaults-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropDefautls'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropDefaults'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropUsers(String sqlInputFilesDir, String destinationDir) {

        log.info("=============== Starting generateDropUsers =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        String[] sqlList = filenameExtractor.getListOfSplitSqlScriptsInDir(sqlInputFilesDir, "default")
        sqlList = new HashSet<String>(Arrays.asList(sqlList)).toArray(new String[0])

        for (String sqlName : sqlList) {
            entityName = filenameExtractor.getEntityNameFromSybaseSplitSqlName(sqlName, "create")
            // Check if entity name is of <dbo>.<name>
            def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
            String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")
            String filteredEntityName = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
            mssqlLineList.add("/****** Object:  User " + filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
            mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + entityName + "\')")
            mssqlLineList.add("DROP USER " + filteredEntityName)
            mssqlLineList.add("GO")
            counter++
        }

        if (mssqlLineList.size() > 0) {
            entityName = 'all'
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "11-dropUsers-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateDropUsers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateDropUsers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
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
    def generateDropDatabase(String databaseName, String destinationDir) {

        log.info("=============== Starting generateDropDatabase =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        String entityName = "[" + databaseName + "]"

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
        mssqlLineList.add("/****** Object:  Database " + entityName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
        mssqlLineList.add("IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + databaseName + "\')")
        mssqlLineList.add("DROP DATABASE " + entityName)
        mssqlLineList.add("GO")

        entityName = 'all'
        int dirIndex = new File(destinationDir).list().length

        String sqlFileName = destinationDir + File.separator + "12-dropDatabase-" + dirIndex + "-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        for (String line : mssqlLineList) {
            sqlFile << line + '\r\n'
        }
        System.out.println("=============== End of 'generateDropDatabase'. Generated 1 statments =============== ")
        log.info("=============== End of 'generateDropDatabase'. Generated 1 statments =============== ")
    }

    /**
     * Functions for generating create statements
     */

    /**
     * 1. Create Database
     *
     * Function type: Read from create DB script
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */

    def generateCreateDatabase(String databaseName, String mssqlCreateDatabaseScriptPath, String destinationDir) {

        log.info("=============== Starting generateCreateDatabase =============== ")

        String entityName = 'all'

        String sqlFileName = destinationDir + File.separator + "1-createDatabase-0-" + entityName + ".sql"
        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)
        log.info("File '${sqlFileName}' created")

        entityName = "[" + databaseName + "]"

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
        sqlFile << "/****** Object:  Database " + entityName + "    Script Date: " + dateFormat.format(new Date()) + " ******/" + '\r\n'

        List<String> lines = Files.readAllLines(Paths.get(mssqlCreateDatabaseScriptPath), StandardCharsets.UTF_8)

        for (String line : lines) {
            sqlFile << line + '\r\n'
        }

        System.out.println("=============== End of 'generateCreateDatabase'. Generated 1 statments =============== ")
        log.info("=============== End of 'generateCreateDatabase'. Generated 1 statments =============== ")
    }

    /**
     * 2-1. Create Users
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, exec
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateUsers(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateCreateUsers =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_adduser")) {

                entityName = lineChecker.getEntityNameFromLine(line, "exec")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  User " + filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + entityName + "\')")
                mssqlLineList.add("CREATE USER " + filteredName + " FOR LOGIN " + filteredName + " WITH DEFAULT_SCHEMA=" + filteredName)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "2.1-createUsers-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateCreateUsers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateCreateUsers'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 2-2. Create DatabaseRole
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, exec
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateDatabaseRoles(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting  generateCreateDatabaseRoles =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_addgroup")) {

                entityName = lineChecker.getEntityNameFromLine(line, "exec")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  DatabseRole " + filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF  NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'" + entityName + "\' AND type = 'R')")
                mssqlLineList.add("CREATE ROLE " + filteredName)
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "2.2-createDatabaseRoles-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of ' generateCreateDatabaseRoles. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of ' generateCreateDatabaseRoles'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 2-3. Add member
     *
     * Function type: Parse sybase sql scripts (groups and users) and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, create type
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */

    def generateAlterRoleAddMemberGrantConnectSchema(String sqlInputFileName, String destinationDir) {
        log.info("=============== Starting AlterRoleAddMemberGrantConnectSchema =============== ")
        log.info("************ Part 1. Generating 'alter role add user' statements ************ ")
        System.out.println("************ Part 1. Generating 'alter role add user' statements ************ ")

        List<String> mssqlLineList = new ArrayList<String>()

        String userName = ''
        String schemaName = ''

        int NUMBER_OF_GROUPS = 3
        int NUMBER_OF_USERS = 22

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_adduser")) {

                String[] entityList = lineChecker.getEntityNameFromLine(line, "exec type and name").replaceAll("'", "").split(",")
                userName = entityList[0]
                String bracketedEntityName = "[" + userName + "]"

                schemaName = entityList[1]

                String roleName = entityList[2]
                String bracketedRoleName = "[" + roleName + "]"

                mssqlLineList.add("ALTER ROLE " + bracketedRoleName + " ADD MEMBER " + bracketedEntityName)
                mssqlLineList.add("GO")
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = (new File(destinationDir).list().length - NUMBER_OF_USERS - NUMBER_OF_GROUPS) / 3

            String sqlFileName = destinationDir + File.separator + "2.3-createAlterRole-" + dirIndex + "-" + userName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        log.info("************ End of part 1. Generated 1 'alter role add user' statments ************")
        System.out.println("************ End of part 1. Generated 1 'alter role add user' statments ************")

        // Generate Grant statements
        log.info("************ Part 2. Generating 'grant connect to user' statements ************")
        System.out.println("************ Part 2. Generating 'grant connect to user' statements ************")

        int dirIndex = (new File(destinationDir).list().length - NUMBER_OF_USERS - NUMBER_OF_GROUPS) / 3
        String sqlFileNameGrantConnect = destinationDir + File.separator + "2.4-createGrantConnect-" + dirIndex + "-" + userName + ".sql"
        new File(sqlFileNameGrantConnect).createNewFile()
        def sqlFileGrantConnect = new File(sqlFileNameGrantConnect)
        log.info("File '${sqlFileNameGrantConnect}' created")

        sqlFileGrantConnect << "GRANT CONNECT TO [" + userName + "] AS [dbo]" + '\r\n'
        sqlFileGrantConnect << "GO" + '\r\n'

        log.info("************ End of part 2. Generated 1 'grant connect to user' statments ************")
        System.out.println("************ End of part 2. Generated 1 'grant connect to user' statments ************")

        // Generate create schema statements
        log.info("************ Part 3.Generating create schema statements ************")
        System.out.println("************ Part 3.Generating create schema statements ************")

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
        List<String> mssqlLineListSchema = new ArrayList<String>()

        mssqlLineListSchema.add("/****** Object:  Schema [" + schemaName + "]    Script Date: " + dateFormat.format(new Date()) + " ******/")
        mssqlLineListSchema.add("IF  NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'" + schemaName + "\' )")
        mssqlLineListSchema.add("EXEC sys.sp_executesql N'CREATE SCHEMA [" + schemaName + "]'")
        mssqlLineListSchema.add("GO")


        int dirIndexSchema = (new File(destinationDir).list().length - NUMBER_OF_USERS - NUMBER_OF_GROUPS - 1) / 3

        String sqlFileNameSchema = destinationDir + File.separator + "2.5-createSchemas-" + dirIndexSchema + "-" + schemaName + ".sql"
        new File(sqlFileNameSchema).createNewFile()
        def sqlFileSchema = new File(sqlFileNameSchema)
        log.info("File '${sqlFileNameSchema}' created")

        for (String line : mssqlLineListSchema) {
            sqlFileSchema << line + '\r\n'
        }

        System.out.println("************ End of part 3. Generated 1 'create schema' statments ************")
        log.info("************ End of part 3. Generated 1 'create schema' statments ************")

        System.out.println("=============== End of 'AlterRoleAddMemberGrantConnectSchema' =============== ")
        log.info("=============== End of 'AlterRoleAddMemberGrantConnectSchema' =============== ")
    }

    /**
     * 3. Create Defaults
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, exec
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateDefaults(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting  generateCreateDefaults =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "CREATE DEFAULT")) {

                entityName = lineChecker.getEntityNameFromLine(line, "create")
                String value = lineChecker.getValueFromLine(line)

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")
                String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Default " + filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\' AND OBJECTPROPERTY(object_id, N'IsDefault') = 1)")
                mssqlLineList.add("EXEC dbo.sp_executesql N'CREATE DEFAULT " + filteredObjectId)
                mssqlLineList.add("AS")
                mssqlLineList.add(value)
                mssqlLineList.add("'")
                mssqlLineList.add("GO")
                counter++
            }
        }
        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "3-createDefaults-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of ' generateCreateDefaults. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of ' generateCreateDefaults'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 4. Create Rules
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, exec
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateRules(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting  generateCreateRules =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "CREATE RULE")) {

                entityName = lineChecker.getEntityNameFromLine(line, "create")
                String value = lineChecker.getValueFromLine(line)

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String filteredName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + entityName + "]")
                String filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Rule " + filteredName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\' AND OBJECTPROPERTY(object_id, N'IsRule') = 1)")
                mssqlLineList.add("EXEC dbo.sp_executesql N'CREATE RULE " + filteredObjectId)
                mssqlLineList.add("AS")
                mssqlLineList.add(value)
                mssqlLineList.add("'")
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "4-createRules-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateCreateRules. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateCreateRules'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 5. Create User Datatypes
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, create then grant references
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateUserDatatypes(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateCreateUserDatatypes =============== ")

        List<String> mssqlLineList = new ArrayList<String>()
        int counter = 0
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "EXEC sp_addtype")) {

                String[] nameTypeValue = lineChecker.getEntityNameFromLine(line, "exec type and name").replaceAll("'", "").split(",")

//                System.out.println("Name type & value: "+ nameTypeValue)
                entityName = nameTypeValue[0]
//                System.out.println("Entity name: "+ entityName)
                String type = nameTypeValue[1].replaceAll("uni", "n")
                String bracketedType = (type.contains("(") ? "[" + type.replaceAll("\\(", "]\\(") : "[" + type + "]")
                String value = nameTypeValue[2]

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String bracketedObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  UserDefinedDataType " + bracketedObjectId + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'" + entityName + "\' AND ss.name = N'dbo')")
                mssqlLineList.add("CREATE TYPE " + bracketedObjectId + " FROM " + bracketedType + " " + value)
                mssqlLineList.add("GO")
                mssqlLineList.add("GRANT REFERENCES ON TYPE::" + bracketedObjectId + " TO [public] AS [dbo]")
                mssqlLineList.add("GO")
                counter++
            }
        }

        if (mssqlLineList.size() > 0) {

            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "5-createUserDatatypes-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of ' generateCreateUserDatatypes. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of ' generateCreateUserDatatypes'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 6. Create Tables
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, create
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateTables(String sqlInputFileName, String destinationDir, String sybaseSplitUserDatatypesDir) {

        log.info("=============== Starting  generateCreateTables =============== ")

        List<String> mssqlLineList = new ArrayList<String>()

        String entityName = ''
        String filteredObjectId = ''
        String constraintName = ''
        boolean isInCreateStatement = false
        boolean constraintStatementIsTerminated = false

        new File(sqlInputFileName).eachLine { String line ->

            if (lineChecker.lineStartsWith(line, "CREATE TABLE")) {

                entityName = lineChecker.getEntityNameFromLine(line, "create")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  Table " + filteredObjectId + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("SET ANSI_NULLS ON")
                mssqlLineList.add("GO")
                mssqlLineList.add("SET QUOTED_IDENTIFIER ON")
                mssqlLineList.add("GO")
                mssqlLineList.add("SET ANSI_PADDING ON")
                mssqlLineList.add("GO")

                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\' AND type in (N'U'))")
                mssqlLineList.add("BEGIN")

                mssqlLineList.add("CREATE TABLE " + filteredObjectId + "(")
            } else if (line.equalsIgnoreCase("(")) {
                isInCreateStatement = true
            } else if (lineChecker.lineStartsWith(line.trim(), "CONSTRAINT")) {
                constraintName = lineChecker.getEntityNameFromLine(line.trim(), "constraint")
            } else if (lineChecker.lineStartsWith(line.trim(), "PRIMARY KEY") || lineChecker.lineStartsWith(line.trim(), "UNIQUE")) {
                def filteredLine = (line.trim() =~ /(?i)(\w+.*) \((\w+.*)\)/)
                String pkStatement = filteredLine[0][1]
                String[] pkColumnNameList = filteredLine[0][2].split(",")
                String bracketedConstraintName = "[" + constraintName + "]"

                mssqlLineList.add("CONSTRAINT " + bracketedConstraintName + " " + pkStatement)
                mssqlLineList.add("(")

                for (String pkColumnName : pkColumnNameList) {
                    String bracketedPkColumnName = "[" + pkColumnName + "]"
                    mssqlLineList.add("\t" + bracketedPkColumnName + " ASC")
                }

                // If there's > 1 constraint, add ',' at the end
                mssqlLineList.add(")WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]" + (line.endsWith(",") ? "," : ""))
            } else if (isInCreateStatement) {

                if (line.equalsIgnoreCase(")")) {
                    isInCreateStatement = false
                } else if (lineChecker.lineStartsWith(line, "    ")) {
                    String[] nameTypeValue = (line.trim().replaceAll("\\[|\\]", "") =~ /(\w+)\s+(\w+\S+)\s+(\w+.*)/)[0]
                    String bracketedColumnName = "[" + nameTypeValue[1] + "]"
                    String bracketedColumnType = getBracketedColumnType(nameTypeValue[2], sybaseSplitUserDatatypesDir).replaceAll("uni", "n")

                    // If the type needs to be not null. TODO add more types if needed
                    String value = (nameTypeValue[3].contains("IDENTITY") && !nameTypeValue[3].contains("NOT NULL") ? nameTypeValue[3].replaceAll("IDENTITY", "IDENTITY NOT NULL") : nameTypeValue[3])
                    mssqlLineList.add("\t" + bracketedColumnName + " " + bracketedColumnType + " " + value)
                }

            } else if (lineChecker.lineStartsWith(line, "GRANT")) {
                if (!constraintStatementIsTerminated) {
                    mssqlLineList.add(") ON [PRIMARY]")
                    mssqlLineList.add("END")
                    mssqlLineList.add("GO")
                    mssqlLineList.add("SET ANSI_PADDING OFF")
                    mssqlLineList.add("GO")
                    constraintStatementIsTerminated = true
                }

                String[] operationNameUser = lineChecker.getOperationNameAndUserFromGrantLine(line)
                if (operationNameUser.length > 0) {
                    String operation = operationNameUser[1]
                    String bracketedUser = "[" + operationNameUser[3] + "]"
                    mssqlLineList.add("GRANT " + operation + " ON " + filteredObjectId + " TO " + bracketedUser + " AS [dbo]")
                    mssqlLineList.add("GO")
                }
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "6-createTables-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }
        System.out.println("=============== End of 'generateCreateTables. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateCreateTables'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    //TODO Finish this after Ted's converted it for MSSQL
    /**
     * 7. Create Views
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, exec
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateViews(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateCreateViews =============== ")

        List<String> mssqlLineList = new ArrayList<String>()

        String entityName = ''
        String filteredObjectId = ''
        boolean isInCreateStatement = false

        new File(sqlInputFileName).eachLine { String line ->

            // Create view might have some comments before the actual create view statement, so use lineContains function rather than lineStartswith
            if (lineChecker.lineContains(line, "create view")) {
                isInCreateStatement = true

                entityName = lineChecker.getEntityNameFromLine(line, "create")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                filteredObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

                SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                mssqlLineList.add("/****** Object:  View " + filteredObjectId + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("SET ANSI_NULLS ON")
                mssqlLineList.add("GO")
                mssqlLineList.add("SET QUOTED_IDENTIFIER ON")
                mssqlLineList.add("GO")

                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'" + filteredObjectId + "\'))")
                mssqlLineList.add("EXEC dbo.sp_executesql @statement = N'" + line)
            }

            else if (lineChecker.lineStartsWith(line, "GO") && isInCreateStatement){
                isInCreateStatement = false
                mssqlLineList.add("'")
                mssqlLineList.add("GO")

            }

            else if(isInCreateStatement){
                mssqlLineList.add(line)
            }

            else if (lineChecker.lineStartsWith(line, "GRANT")) {
                String[] operationNameUser = lineChecker.getOperationNameAndUserFromGrantLine(line)
                if (operationNameUser.length > 0) {
                    String operation = operationNameUser[1]
                    String bracketedUser = "[" + operationNameUser[3] + "]"
                    mssqlLineList.add("GRANT " + operation + " ON " + filteredObjectId + " TO " + bracketedUser + " AS [dbo]")
                    mssqlLineList.add("GO")
                }
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "7-createViews-" + dirIndex + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of 'generateViews. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateViews'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 8. Create Indices
     *
     * Function type: Parse sybase sql script and assign entity names
     *
     * SQL type: If not exists select * from <sys.type> with match name, create
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
        def generateCreateIndices(String sqlInputFileName, String destinationDir) {

            log.info("=============== Starting generateCreateIndices =============== ")

            List<String> mssqlLineList = new ArrayList<String>()
            String indexName = ''
            String indexType = ''

            new File(sqlInputFileName).eachLine { String line ->
                if (lineChecker.lineStartsWith(line, "CREATE")) {

                    indexName = lineChecker.getEntityNameFromLine(line, "create index")
                    indexType = lineChecker.getIndexTypeFromCreateLine(line)
                }

                else if (lineChecker.lineStartsWith(line, "    ON")){
                    System.out.println("line: "+ line)
                    System.out.println("index type: " + indexType)
                    System.out.println("index name: " + indexName)
                    String[] nameIndices = lineChecker.getNameIndicesFromOnLine(line.trim())
                    String entityName = nameIndices[1]
                    String[] indexList = nameIndices[2].split(",")

                    def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                    String bracketedObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")
                    String bracketedIndexName = (filterEntityName ? "[" + filterEntityName[0][2] + "]" : "[" + indexName + "]")

                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
                    mssqlLineList.add("/****** Object:  Index " + bracketedIndexName + "    Script Date: " + dateFormat.format(new Date()) + " ******/")
                    mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'" + bracketedObjectId + "\' AND name = N'" + indexName + "\')")
                    mssqlLineList.add("CREATE " + indexType + " INDEX " + bracketedIndexName + " ON " + bracketedObjectId)
                    mssqlLineList.add("(")

                    for (String index : indexList) {
                        String bracketedIndex = "[" + index + "]"
                        mssqlLineList.add("\t" + bracketedIndex + " ASC" + (index.equalsIgnoreCase(indexList[-1])? "" : ","))
                    }

                    mssqlLineList.add(")WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]")
                    mssqlLineList.add("GO")
                    mssqlLineList.add("SET ANSI_PADDING ON")
                    mssqlLineList.add("GO")
                }
            }

            if (mssqlLineList.size() > 0) {

                int dirIndex = new File(destinationDir).list().length

                String sqlFileName = destinationDir + File.separator + "8-createIndices-" + dirIndex + "-" + indexName + ".sql"
                new File(sqlFileName).createNewFile()
                def sqlFile = new File(sqlFileName)
                log.info("File '${sqlFileName}' created")

                for (String line : mssqlLineList) {
                    sqlFile << line + '\r\n'
                }
            }

            System.out.println("=============== End of 'generateCreateIndices. Generated ${mssqlLineList.size()} lines for '" + indexName + "' =============== ")
            log.info("=============== End of 'generateCreateUserIndices'. Generated ${mssqlLineList.size()} lines for '" + indexName + "' =============== ")
        }

    /**
     * 9. is a whole bunch of DF constraints, alter table <table name> add default <value> for <solumn>
     */

    /**
     * 10. Create Foreign keys
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table add constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateForeignKeys(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateCreateForeignKeys =============== ")


        List<String> mssqlLineList = new ArrayList<String>()
        String fkName = ''
        String fkColumnName = ''
        String refTableName = ''
        String refColumnName = ''
        String entityName = ''

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "alter table")) {
                entityName = lineChecker.getEntityNameFromLine(line, "alter table")

            } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                fkName = lineChecker.getEntityNameFromLine(line, "add constraint")
            }
            else if (lineChecker.lineStartsWith(line, "FOREIGN KEY")) {
                fkColumnName = lineChecker.getFkColumnNameFromFkLine(line)
            }

            else if (lineChecker.lineStartsWith(line, "REFERENCES")) {
                String[] refTableColumn= lineChecker.getFkRefTableColumnFromReferencesLine(line)
                refTableName = refTableColumn[1]
                refColumnName = refTableColumn[2]

                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                String bracketedObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")
                String bracketedFkName = "[" + fkName + "]"
                String bracketedFkColumnName = "[" + fkColumnName + "]"

                def filterRefTableName = (refTableName =~ /(\w+)\.(\w+)/)
                String bracketedRefTableName = (filterRefTableName ? "[" + filterRefTableName[0][1] + "].[" + filterRefTableName[0][2] + "]" : "[dbo].[" + refTableName + "]")
                String bracketedRefColumnName = "([" + refColumnName + "])"

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")
                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo]." + bracketedFkName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + bracketedObjectId + "'))")
                mssqlLineList.add("ALTER TABLE " + bracketedObjectId + " WITH CHECK ADD CONSTRAINT " + bracketedFkName + " FOREIGN KEY(" + bracketedFkColumnName + ")")
                mssqlLineList.add("REFERENCES " + bracketedRefTableName + " " + bracketedRefColumnName)
                mssqlLineList.add("GO")

                // Add check statement
                mssqlLineList.add("IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo]." + bracketedFkName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + bracketedObjectId + "'))")
                mssqlLineList.add("ALTER TABLE " + bracketedObjectId + " CHECK CONSTRAINT " + bracketedFkName)
                mssqlLineList.add("GO")
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "10-createForeignKeys-" + dirIndex + "-" + fkName + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of 'generateCreateForeignKeys'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generateCreateForeignKeys'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

    /**
     * 11. Create Check Constraints
     *
     * Function type: Parse sybase sql script and assign entity and parent names
     *
     * SQL type: If exists select * from <sys.type> with match object id and parent_object_id, alter table add constraint
     *
     * @param splitTriggersFolderDir
     * @param destinationDir
     * @return
     */
    def generateCreateCheckConstraints(String sqlInputFileName, String destinationDir) {

        log.info("=============== Starting generateCreateCheckConstraints =============== ")


        List<String> mssqlLineList = new ArrayList<String>()
        String entityName = ''
        String constraintName = ''
        String bracketedObjectId = ''
        String bracketedConstraintName = ''
        List<String> checkStatementList = new ArrayList<String>()
        boolean isCheckStatement = false

        new File(sqlInputFileName).eachLine { String line ->
            if (lineChecker.lineStartsWith(line, "alter table")) {
                entityName = lineChecker.getEntityNameFromLine(line, "alter table")
                def filterEntityName = (entityName =~ /(\w+)\.(\w+)/)
                bracketedObjectId = (filterEntityName ? "[" + filterEntityName[0][1] + "].[" + filterEntityName[0][2] + "]" : "[dbo].[" + entityName + "]")

//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy h:mm:ss a")
//            mssqlLineList.add("/****** Object:  StoredProcedure " + filteredEntityName + "     Script Date: " + dateFormat.format(new Date()) + " ******/")

            } else if (lineChecker.lineStartsWith(line, "add constraint")) {
                constraintName = lineChecker.getEntityNameFromLine(line, "add constraint")
                bracketedConstraintName = "[" + constraintName + "]"

                mssqlLineList.add("IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo]." + bracketedConstraintName + "\') AND " +
                        "parent_object_id = OBJECT_ID(N'" + bracketedObjectId + "'))")

            } else if (lineChecker.lineStartsWith(line, "CHECK")) {

                isCheckStatement = true
                checkStatementList.add(lineChecker.getChecksFromCheckLine(line))
            } else if (isCheckStatement) {
                if (line.startsWith("go")) {
                    isCheckStatement = false
                    String formattedCheckStatement = lineChecker.formatCheckStatement(checkStatementList)

                    mssqlLineList.add("ALTER TABLE " + bracketedObjectId + " WITH CHECK ADD CONSTRAINT " + bracketedConstraintName +
                            " CHECK " + formattedCheckStatement)
                    mssqlLineList.add("GO")

                    // Add check statement
                    mssqlLineList.add("IF EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo]." + bracketedConstraintName + "\') AND " +
                            "parent_object_id = OBJECT_ID(N'" + bracketedObjectId + "'))")
                    mssqlLineList.add("ALTER TABLE " + bracketedObjectId + " CHECK CONSTRAINT " + bracketedConstraintName)
                    mssqlLineList.add("GO")

                } else {
                    checkStatementList.add(line.trim())
                }
            }
            else{
                //TODO: Have to put this empty else statement here, otherwise it'll execute the else statement inside the else if (isCheckStatement) above...
            }
        }

        if (mssqlLineList.size() > 0) {
            int dirIndex = new File(destinationDir).list().length

            String sqlFileName = destinationDir + File.separator + "11-createCheckConstraints-" + dirIndex + "-" + constraintName + "-" + entityName + ".sql"
            new File(sqlFileName).createNewFile()
            def sqlFile = new File(sqlFileName)
            log.info("File '${sqlFileName}' created")

            for (String line : mssqlLineList) {
                sqlFile << line + '\r\n'
            }
        }

        System.out.println("=============== End of 'generatecreateCheckConstraints'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
        log.info("=============== End of 'generatecreateCheckConstraints'. Generated ${mssqlLineList.size()} lines for '" + entityName + "' =============== ")
    }

}
