package nz.govt.nzqa.m11n.tools.automation.shell

import groovy.util.logging.Slf4j

/**
 * Provides a means to perform a shell command from groovy.
 */
@Slf4j
class ShellCommand {

    def exitValue
    def output = ''
    Boolean showOutput = false
    Boolean clearOutputOnCommandCompletion = false

    // Executes a shell command (linux only).
    // See http://www.joergm.com/2010/09/executing-shell-commands-in-groovy/
    def executeOnShell(String command) {
        return executeOnShellWithWorkingDirectory(command, System.properties.'user.dir')
    }

    def executeOnShellWithWorkingDirectory(String command, String workingDirectoryPath) {
        log.info("Executing\n  ${command}\n  in: ${workingDirectoryPath}")
        File workingDirectory = new File(workingDirectoryPath)
        def process = new ProcessBuilder(addShellPrefix(command))
                .directory(workingDirectory)
                .redirectErrorStream(true)
                .start()
        process.inputStream.eachLine { processOutput(it) }
        process.waitFor();
        exitValue = process.exitValue()
        if (showOutput) {
            println("${output}")
        }
        if (clearOutputOnCommandCompletion) {
            output = ''
        }
    }

    private def addShellPrefix(String command) {
        def commandArray = new String[3]
        commandArray[0] = "sh"
        commandArray[1] = "-c"
        commandArray[2] = command
        return commandArray
    }

    def processOutput(String outputLine) {
        output <<= outputLine
        output <<= '\n'
        log.info(outputLine)
    }
}
