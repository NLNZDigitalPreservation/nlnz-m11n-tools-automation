package nz.govt.nzqa.eqa.buildtools

import java.text.SimpleDateFormat

//import groovy.util.logging.Slf4j

/**
 * This is a simple logger to be replaced at some point with something like Slf4j.
 */
//@Slf4j
class Logger {

    static SimpleDateFormat DATE_FORMATTER = new SimpleDateFormat("yyyy-MM-dd--HH-mm-ss")

    def logFilePath
    Boolean logToFile = true
    Boolean logToConsole = false
    Boolean appendLogFileIfItAlreadyExists = true
    private Boolean logFileReady = false
    private File logFile

    String logStartDate = DATE_FORMATTER.format(new Date())

    def generateLogFilePath(String logFolder, String fileNamePrefix) {
        logFilePath = logFolder + File.separator + fileNamePrefix + '-' + logStartDate + '.log'
    }

    def logToFile(String outputLine) {
        if (logToConsole) {
            println(outputLine)
        }
        ensureLogFile()
        if (logToFile && logFile != null && logFile.exists() && logFile.canWrite()) {
            //println("outputLine ${outputLine}")
            FileWriter fileWriter = new FileWriter(logFile, true) // append to file
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter)
            bufferedWriter.write(outputLine)
            bufferedWriter.write('\n')
            bufferedWriter.flush()
            bufferedWriter.close()
        }
    }

    def ensureLogFile() {
        if (!logToFile) {
            return
        }
        if (logFile == null && logFilePath != null) {
            logFile = new File(logFilePath)
        }
        if (!logFileReady && logFile != null) {
            if (!appendLogFileIfItAlreadyExists || !logFile.exists()) {
                File parentFolder = logFile.getParentFile()
                parentFolder.mkdirs()
                logFile.createNewFile()
            }
            logFileReady = true
        }
    }
}
