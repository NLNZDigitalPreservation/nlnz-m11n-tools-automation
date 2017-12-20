package nz.govt.nzqa.m11n.tools.automation.db

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.file.FilenameExtractor

import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Paths
import java.util.stream.Collectors

@Slf4j
class SybaseOperator {

    String getSqlTypeFromSybaseSqlName(String sybaseSqlName) {

        log.debug("sybaseSqlName: " + sybaseSqlName)
        String sqlType = ''

        def regexFilter = /(\d+)-eqa_prod_(\w+)_(\d+).sql/
        // After regex gives [ sybaseSqlName, index, sqlType, date]
        log.debug("after regex: " + (sybaseSqlName =~ /$regexFilter/)[0])
        String baseName = ((sybaseSqlName =~ /$regexFilter/)[0][2])
        log.debug("BaseName: " + (sybaseSqlName =~ /$regexFilter/)[0][2])

        String[] baseNameSplit = ((sybaseSqlName =~ /$regexFilter/)[0][2]).split('_')
        if (baseNameSplit.size() > 1) {
            // Has > 1 word
            for (String word : baseNameSplit) {
                sqlType += camelCase(word)
            }
        } else {
            sqlType = camelCase(baseName)
        }

        log.debug("sqlType " + sqlType)
        return sqlType
    }

    String camelCase(String word) {
        return word.substring(0, 1).toUpperCase() + word.substring(1)
    }

    void writeLineBufferIntoFirstFile(File sqlFile, String[] lineBufferForFirstFile) {
        for (String line : lineBufferForFirstFile) {
            sqlFile << line + '\r\n'
        }
    }

    /**
     * Split defaults.sql - dropping and creating objects/parameters in dbo
     *
     * Type: if not null drop all then create
     *
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
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        boolean doneDropping = false
        String[] lineBufferForFirstFile = []
        String lineType = "if"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create") && isFirstCreateStatement) {
                    log.info("Dropping completed. Current entity name reset and start creating...")

                    doneDropping = true
                    currentEntityName = ''
                    isFirstCreateStatement = false
                    lineType = "create"
                }

                if ((lineChecker.lineStartsWith(line, "if") && !doneDropping) || lineChecker.lineStartsWith(line, "create")) {

                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)

                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitDefaults-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromStatus(doneDropping) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitDefaults' Generated ${counter} files =============== ")
    }

    /**
     * Split user_datatypes.sql - dropping and creating user-defined data types in systypes
     *
     * Type: if exist drop all then exec add
     *
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
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        boolean doneDropping = false
        String[] lineBufferForFirstFile = []
        String lineType = "if exists"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "exec sp_addtype") && isFirstCreateStatement) {
                    log.info("Dropping completed. Current entity name reset and start creating...")

                    doneDropping = true
                    currentEntityName = ''
                    isFirstCreateStatement = false
                    lineType = "exec"
                }

                if ((lineChecker.lineStartsWith(line, "if exists") && !doneDropping) || lineChecker.lineStartsWith(line, "exec sp_addtype")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitUserDatatypes-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromStatus(doneDropping) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitUserDatatypes' Generated ${counter} files =============== ")
    }

    /**
     * Split groups.sql - adding groups
     *
     * Type: exec add
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitGroups(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitGroups() =============== ")

        String outputDir = destinationDir + File.separator + "splitGroups"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "exec")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, "exec")
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitGroups-" + counter + "-" + currentEntityName + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitGroups' Generated ${counter} files =============== ")
    }

    /**
     * Split users.sql - adding users
     *
     * Type: exec add
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitUsers(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitRules() =============== ")

        String outputDir = destinationDir + File.separator + "splitUsers"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "exec")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, "exec")
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitUsers-" + counter + "-" + currentEntityName + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitUsers' Generated ${counter} files =============== ")
    }

    /**
     * Split rules.sql - dropping and creating rules
     *
     * Type: if not null drop all then create
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitRules(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitRules() =============== ")

        String outputDir = destinationDir + File.separator + "splitRules"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        boolean doneDropping = false
        String[] lineBufferForFirstFile = []
        String lineType = "if"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create rule") && isFirstCreateStatement) {
                    log.info("Dropping completed. Current entity name reset and start creating...")

                    doneDropping = true
                    currentEntityName = ''
                    isFirstCreateStatement = false
                    lineType = "create"
                }

                if ((lineChecker.lineStartsWith(line, "if") && !doneDropping) || lineChecker.lineStartsWith(line, "create rule")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitRules-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromStatus(doneDropping) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitRules' Generated ${counter} files =============== ")
    }

    /**
     * Split user_messages.sql - adding  user messages
     *
     * Type: exec add
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitUserMessages(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitUserMessages() =============== ")

        String outputDir = destinationDir + File.separator + "splitUserMessages"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "exec")) {
                    String currentEntityName = lineChecker.getEntityNameFromLine(line, "exec")
                    // Create a new file for new entity
                    sqlFileName = outputDir + File.separator + "splitUserMessages-" + counter + "-" + currentEntityName + ".sql"
                    new File(sqlFileName).createNewFile()
                    sqlFile = new File(sqlFileName)
                    log.info("File '${sqlFileName}' created")

                    counter++

                    if (firstFileNotCreated) {
                        writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                        firstFileNotCreated = false
                    }
                    sqlFile << line + '\r\n'
                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitUserMessages' Generated ${counter} files =============== ")
    }

    /**
     * Split tables.sql - creating all table objects
     *
     * Type: create only
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitTables(File sybaseSqlFile, String destinationDir) {

        log.info("=============== Starting splitTables() =============== ")

        String outputDir = destinationDir + File.separator + "splitTables"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create table")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, "create")
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitTables-" + counter + "-" + currentEntityName + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }
                    sqlFile << line + '\r\n'
                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitTables' Generated ${counter} files =============== ")
    }

    /**
     * Split indices.sql
     *
     * Type: if not null drop all then create
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitIndices(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitIndices() =============== ")

        String outputDir = destinationDir + File.separator + "splitIndices"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
//        boolean doneDropping = false
        String[] lineBufferForFirstFile = []
        String lineType = "if index"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create")) {
                    log.info("Dropping completed. Current entity name reset and start creating...")

//                    doneDropping = true
                    currentEntityName = ''
                    lineType = "create index"
                } else if (lineChecker.lineStartsWith(line, "if")) {
                    lineType = "if index"
                }

                if (lineChecker.lineStartsWith(line, "if") || lineChecker.lineStartsWith(line, "create")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitIndices-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromLine(line) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }

        }
        log.info("=============== End of 'splitIndices' Generated ${counter} files =============== ")
    }

    /**
     * Split triggers.sql - dropping and recreating all trigger objects
     *
     * Type: if not null drop all then create
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitTriggers(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitTriggers() =============== ")

        String outputDir = destinationDir + File.separator + "splitTriggers"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        String[] lineBufferForFirstFile = []
        String lineType = "if object_id"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create trigger")) {
                    lineType = "create"

                    if (isFirstCreateStatement) {
                        log.info("Dropping completed. Current entity name reset and start creating...")
                        currentEntityName = ''
                        isFirstCreateStatement = false
                    }

                } else if (lineChecker.lineStartsWith(line, "if object_id")) {
                    lineType = "if object_id"
                }

                if (lineChecker.lineStartsWith(line, "if object_id") || lineChecker.lineStartsWith(line, "create trigger")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitTriggers-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromLine(lineType) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitTriggers' Generated ${counter} files =============== ")
    }

    /**
     * Split unique_keys.sql - altering tables and add unique key constraints
     *
     * Type: alter table
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitUniqueKeys(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitUniqueKeys() =============== ")

        String outputDir = destinationDir + File.separator + "splitUniqueKeys"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
                // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "alter table")) {
                    String currentEntityName = lineChecker.getEntityNameFromLine(line, "alter table")
                    // Create a new file for new entity
                    sqlFileName = outputDir + File.separator + "splitUniqueKeys-" + counter + "-" + currentEntityName + ".sql"
                    new File(sqlFileName).createNewFile()
                    sqlFile = new File(sqlFileName)
                    log.info("File '${sqlFileName}' created")

                    counter++

                    if (firstFileNotCreated) {
                        writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                        firstFileNotCreated = false
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitUniqueKeys' Generated ${counter} files =============== ")
    }

    /**
     * Split check_constraints.sql - altering tables, add constraints and check for their  values
     *
     * Type: alter table
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitCheckConstraints(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitCheckConstraints() =============== ")

        String outputDir = destinationDir + File.separator + "splitCheckConstraints"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
                // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "alter table")) {
                    String currentEntityName = lineChecker.getEntityNameFromLine(line, "alter table")
                    // Create a new file for new entity
                    sqlFileName = outputDir + File.separator + "splitCheckConstraints-" + counter + "-" + currentEntityName + ".sql"
                    new File(sqlFileName).createNewFile()
                    sqlFile = new File(sqlFileName)
                    log.info("File '${sqlFileName}' created")

                    counter++

                    if (firstFileNotCreated) {
                        writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                        firstFileNotCreated = false
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitCheckConstraints' Generated ${counter} files =============== ")
    }

    /**
     * Split foreign_keys.sql - altering tables and add foreign key contraints
     *
     * Type: alter table
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitForeignKeys(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitForeignKeys() =============== ")

        String outputDir = destinationDir + File.separator + "splitForeignKeys"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "alter table")) {
                    String currentEntityName = lineChecker.getEntityNameFromLine(line, "alter table")
                    // Create a new file for new entity
                    sqlFileName = outputDir + File.separator + "splitForeignKeys-" + counter + "-" + currentEntityName + ".sql"
                    new File(sqlFileName).createNewFile()
                    sqlFile = new File(sqlFileName)
                    log.info("File '${sqlFileName}' created")

                    counter++

                    if (firstFileNotCreated) {
                        writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                        firstFileNotCreated = false
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }
        }
        log.info("=============== End of 'splitForeignKeys' Generated ${counter} files =============== ")
    }

    /**
     * Split views.sql - altering tables and add foreign key contraints
     *
     * Type: if not null drop all then create
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitViews(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitViews() =============== ")

        String outputDir = destinationDir + File.separator + "splitViews"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        boolean doneDropping = false
        String[] lineBufferForFirstFile = []
        String lineType = "if"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "create view") && isFirstCreateStatement) {
                    log.info("Dropping completed. Current entity name reset and start creating...")

                    doneDropping = true
                    currentEntityName = ''
                    isFirstCreateStatement = false
                    lineType = "create view"
                }

                if ((lineChecker.lineStartsWith(line, "if") && !doneDropping) || lineChecker.lineStartsWith(line, "create view")) {
                    String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                    if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName)) {
                        currentEntityName = newEntityName

                        // Create a new file for new entity
                        sqlFileName = outputDir + File.separator + "splitViews-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromStatus(doneDropping) + ".sql"
                        new File(sqlFileName).createNewFile()
                        sqlFile = new File(sqlFileName)
                        log.info("File '${sqlFileName}' created")

                        counter++

                        if (firstFileNotCreated) {
                            writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                            firstFileNotCreated = false
                        }
                    }

                    sqlFile << line + '\r\n'

                } else if (firstFileNotCreated) {
                    lineBufferForFirstFile += line
                } else {
                    sqlFile << line + '\r\n'
                }
            }

        }
        log.info("=============== End of 'splitViews' Generated ${counter} files =============== ")
    }

    /**
     * Split SP.sql - altering tables and add foreign key contraints
     *
     * Type: if not null drop all then create
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitSP(File sybaseSqlFile, String destinationDir) {
        log.info("=============== Starting splitSP() =============== ")

        String outputDir = destinationDir + File.separator + "splitSP"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        boolean isFirstCreateStatement = true
        String[] lineBufferForFirstFile = []
        String lineType = "if object_id"

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
                // If line not blank
                if (line.trim()) {
                    if (lineChecker.lineStartsWith(line, "create procedure")) {
                        lineType = "create"

                        if (isFirstCreateStatement) {
                            log.info("Dropping completed. Current entity name reset and start creating...")
                            currentEntityName = ''
                            isFirstCreateStatement = false
                        }
                    }

                    else if (lineChecker.lineStartsWith(line, "if object_id")) {
                        lineType = "if object_id"
                    }

                    if (lineChecker.lineStartsWith(line, "if object_id") || lineChecker.lineStartsWith(line, "create procedure") || lineChecker.lineStartsWith(line, "create proc")) {
                        String newEntityName = lineChecker.getEntityNameFromLine(line, lineType)
                        if (lineChecker.entityNameHasChanged(newEntityName, currentEntityName) && !line.contains("--")) {
                            currentEntityName = newEntityName

                            // Create a new file for new entity
                            sqlFileName = outputDir + File.separator + "splitSP-" + counter + "-" + currentEntityName + "-" + lineChecker.getTypeFromLine(lineType) + ".sql"
                            new File(sqlFileName).createNewFile()
                            sqlFile = new File(sqlFileName)
                            log.info("File '${sqlFileName}' created")

                            counter++

                            if (firstFileNotCreated) {
                                writeLineBufferIntoFirstFile(sqlFile, lineBufferForFirstFile)
                                firstFileNotCreated = false
                            }
                        }

                        sqlFile << line + '\r\n'

                    } else if (firstFileNotCreated) {
                        lineBufferForFirstFile += line
                    } else {
                        sqlFile << line + '\r\n'
                    }
                }
            }
        log.info("=============== End of 'splitSP' Generated ${counter} files =============== ")
    }


    /**
     * Split sybase_eqa_prod.sql into 11 <00>-eqa_prod_<smaller file type>_<6 digit timestamp>.sql files for splitSybaseScripts task
     *
     * Type: check for comments, '-- create <entity>' and '-- <entity>'
     *
     * @param sybaseSqlFile
     * @param destinationDir
     */
    def splitSybase(File sybaseSqlFile, String destinationDir) {

        log.info("=============== Starting splitSybase() =============== ")

        String outputDir = destinationDir + File.separator + "splitSybase"
        new File(outputDir).mkdir()
        log.info("New directory '${outputDir}' created")

        LineChecker lineChecker = new LineChecker()

        int counter = 0
        String currentEntityName = ''
        boolean firstFileNotCreated = true
        String[] lineBufferForFirstFile = []
        String lineType = "create"

        Map<String, String> typeAndFilenameLookup = new HashMap<String, String>()

        String sqlFileName = ''
        def sqlFile

        sybaseSqlFile.eachLine { String line ->
            // If line not blank
            if (line.trim()) {
                if (lineChecker.lineStartsWith(line, "exec")) {
                    String type = (line =~ /(?i)exec (\w+)/)[0][1]
                    String newEntityName =
                            System.out.println(type)

                    if (!newEntityName.equalsIgnoreCase(currentEntityName)) {
                        // Write to new file
                    }

                } else if (lineChecker.lineStartsWith(line, "if object_id")) {
                    String newEntityName = (line =~ /'(\w+.*)'/)[0][1]
                    System.out.println(newEntityName)
                    if (!newEntityName.equalsIgnoreCase(currentEntityName)) {
                        // Write to new file
                    }
                } else if (lineChecker.lineStartsWith(line, "create")) {
                    String type = (line =~ /(?i)create (\w+)/)[0][1]

                } else if (lineChecker.lineStartsWith(line, "alter table")) {
                    String type = (line =~ /(?i)create (\w+)/)[0][1]

                }

            }
        }
        log.info("=============== End of 'splitBigSybaseSql' Generated ${counter} files =============== ")
    }

    /**
     * Reconstruct the original file. Used in unit test only
     *
     * @param splitFileDir
     */
    def reconstruct (String splitFileDir){
        String reconstructedFileName = splitFileDir + File.separator + "reconstructed.sql"
//        System.out.println(splitFileDir)
//        System.out.println(reconstructedFileName)
        new File(reconstructedFileName).createNewFile()
        File reconstructedFile = new File(reconstructedFileName)
        log.info("File '${reconstructedFileName}' created")

        String[] splitFileNameList = new FilenameExtractor().getListOfSplitSqlScriptsInDir(splitFileDir, "default")

        for (String splitFileName : splitFileNameList){
            List<String> lines = Files.readAllLines(Paths.get(splitFileDir + File.separator + splitFileName),  StandardCharsets.UTF_8)
            for(String line : lines){
                reconstructedFile << line + '\r\n'
            }
        }
    }

    int[] getLinesWhereReconstructedFileDiffersFromOriginal (String originalFilePath, String reconstructedFilepath){
        List<Integer> lineDifferentFromOriginal = new ArrayList<>()
        List<String> originalLineList = Files.readAllLines(Paths.get(originalFilePath), StandardCharsets.UTF_8)
                .stream().filter({str -> !str.trim().isEmpty()}).collect(Collectors.toList())

        List<String> reconstructedLineList = Files.readAllLines(Paths.get(reconstructedFilepath), StandardCharsets.UTF_8)

        System.out.println("originalLineList size: " + originalLineList.size())
        System.out.println("reconstructedLineList size: " + reconstructedLineList.size())

        for(int index = 0; index < reconstructedLineList.size(); index ++){
            if(! originalLineList.get(index).equalsIgnoreCase(reconstructedLineList.get(index))){
                System.out.println("Index: " + index)
                System.out.println("original.get(index): " + originalLineList.get(index))
                System.out.println("reconstructedLineList.get(index): " + reconstructedLineList.get(index))
                lineDifferentFromOriginal.add(index + 1)
            }
        }

        System.out.println("Line no. diff :" + lineDifferentFromOriginal)
        return lineDifferentFromOriginal

    }


}