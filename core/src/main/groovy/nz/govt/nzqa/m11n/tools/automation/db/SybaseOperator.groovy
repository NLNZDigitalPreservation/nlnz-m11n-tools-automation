package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j

@Slf4j
class SybaseOperator {

/**
 * Split defaults.sql - dropping and creating objects/parameters in dbo
 * @param sybaseSqlFile
 * @param destinationDir
 */
    def splitDefaults(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitDefaults() =============== ")

        String outputDir = destinationDir + File.separator + "splitDefaults"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean fileExist = true
        boolean partOfCreateStatement = false

        String sqlFileName = outputDir + File.separator + "splitDefaults-" + counter + ".sql"
        log.info("File '${sqlFileName}' created")

        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)

        sybaseSqlFile.eachLine {
            String line ->
                // If line not blank
                if (line.trim()) {

                    if (lineChecker.lineStartsWithIf(line) && !partOfCreateStatement) {
                        if (fileExist) {
                            sqlFile << line + '\r\n'
                            counter++
                            fileExist = false

                        } else {
                            // Create a new file for new entity
                            sqlFileName = outputDir + File.separator + "splitDefaults-" + counter + "-drop.sql"
                            new File(sqlFileName).createNewFile()
                            sqlFile = new File(sqlFileName)
                            log.info("File '${sqlFileName}' created")
                            sqlFile << line + '\r\n'
                            counter++
                        }
                    }

                    else if (lineChecker.lineStartsWithCreate(line)) {
                        partOfCreateStatement = true

                        if (fileExist) {
                            sqlFile << line + '\r\n'
                            counter++
                            fileExist = false

                        } else {
                            // Create a new file for new entity
                            sqlFileName = outputDir + File.separator + "splitDefaults-" + counter + "-create.sql"
                            new File(sqlFileName).createNewFile()
                            sqlFile = new File(sqlFileName)
                            log.info("File '${sqlFileName}' created")
                            sqlFile << line + '\r\n'
                            counter++
                        }
                    }

                    else {
                        sqlFile << line + '\r\n'
                    }
                }
        }

        log.info("=============== End of 'splitDefaults' Generated ${counter} files =============== ")
    }

/**
 * Split user_datatypes.sql - dropping and creating data types in dbo
 * @param sybaseSqlFile
 * @param destinationDir
 */
    def splitUserDatatypes(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitUserDatatypes() =============== ")

        String outputDir = destinationDir + File.separator + "splitUserDatatypes"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean fileExist = true

        String sqlFileName = outputDir + File.separator + "splitUserDatatypes-" + counter + ".sql"
        log.info("File '${sqlFileName}' created")

        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)

        sybaseSqlFile.eachLine {
            String line ->
                // If line not blank
                if (line.trim()) {
                    if (lineChecker.lineStartsWith(line, "exec") || lineChecker.lineStartsWith(line, "if exists")) {
                        if (lineChecker.entityNameHasChanged(line, currentEntityName)) {
                            currentEntityName = lineChecker.getEntityNameFromLine(line)
                            System.out.println("Current entity name: " + currentEntityName)

                            if (fileExist) {
                                sqlFile << line + '\r\n'
                                counter++
                                fileExist = false

                            } else {
                                // Create a new file for new entity
                                sqlFileName = outputDir + File.separator + "splitUserDatatypes-" + counter + lineChecker.getTypeFromLine(line) + ".sql"
                                new File(sqlFileName).createNewFile()
                                sqlFile = new File(sqlFileName)
                                log.info("File '${sqlFileName}' created")
                                sqlFile << line + '\r\n'
                                counter++
                            }
                        } else {
                            sqlFile << line + '\r\n'
                        }
                    }

                    log.info("=============== End of 'splitUserDatatypes' Generated ${counter} files =============== ")
                }
        }
    }

/**
 * Split tables.sql - creating all tables for data storage
 * @param sybaseSqlFile
 * @param destinationDir
 */
    def splitTables(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitTables() =============== ")

        String outputDir = destinationDir + File.separator + "splitTables"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

//    MySqlTable mySqlTable = new MySqlTable()
        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean fileExist = true

        String sqlFileName = outputDir + File.separator + "splitTables-" + counter + ".sql"
        log.info("File '${sqlFileName}' created")

        new File(sqlFileName).createNewFile()
        def sqlFile = new File(sqlFileName)

        sybaseSqlFile.eachLine {
            String line ->
                // If line not blank
                if (line.trim()) {

                    if (lineChecker.lineIsCreateTable(line)) {

//                    String[] names = utils.getSchemaAndTableNames(line)
//                    mySqlTable.schemaName = names[0]
//                    mySqlTable.tableName = names[1]

                        if (fileExist) {
                            sqlFile << line + '\r\n'
                            counter++
                            fileExist = false

                        } else {
                            // Create a new file for new table
                            sqlFileName = outputDir + File.separator + "splitTables-" + counter + ".sql"
                            new File(sqlFileName).createNewFile()
                            sqlFile = new File(sqlFileName)
                            log.info("File '${sqlFileName}' created")
                            sqlFile << line + '\r\n'
                            counter++
                        }
                    }

                    else {
                        sqlFile << line + '\r\n'
                    }
                }
        }

        log.info("=============== End of 'splitTables' Generated ${counter} files =============== ")
    }
}