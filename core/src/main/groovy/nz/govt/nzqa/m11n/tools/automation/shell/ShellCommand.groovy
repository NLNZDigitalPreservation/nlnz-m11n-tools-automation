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
    String commandUsed
    boolean exceptionOnError
    String exceptionMessagePrefix

    // Executes a shell command (linux only).
    // See http://www.joergm.com/2010/09/executing-shell-commands-in-groovy/
    ShellCommand executeOnShell(String command) {
        this.commandUsed = command
        File userDir = new File((String) System.properties.'user.dir')
        return executeOnShellWithWorkingDirectory(command, userDir)
    }

    ShellCommand executeOnShellWithWorkingDirectory(String command, File workingDirectory) throws ShellException {
        this.commandUsed = command
        if (!workingDirectory?.exists()) {
            throw new ShellException("Unable to execute (working directory does not exist) command=[${command}], workingDirectory=[${workingDirectory}]")
        }
        log.debug("Executing\n  ${command}\n  in: ${workingDirectory.getAbsolutePath()}")
        def process = new ProcessBuilder(addCommandPrefix(command))
                .directory(workingDirectory)
                .redirectErrorStream(true)
                .start()
        process.inputStream.eachLine { processOutput(it) }
        process.waitFor()
        exitValue = process.exitValue()
        if (showOutput) {
            println("${output}")
        }
        if (clearOutputOnCommandCompletion) {
            output = ''
        }
        if (this.hasError() && this.exceptionOnError) {
            throw new ShellException("${exceptionMessagePrefix} using command=[${this.commandUsed}], exitValue=[${this.exitValue}]")
        }
        return this
    }

    private String[] addCommandPrefix(String command) {
        OperatingSystemFinder.OperatingSystemType osType = OperatingSystemFinder.instance.operatingSystemType
        String[] result
        switch (osType) {
            case OperatingSystemFinder.OperatingSystemType.Windows:
                result = addWindowsShellPrefix(command)
                break
            case OperatingSystemFinder.OperatingSystemType.Linux:
                result = addLinuxShellPrefix(command)
                break
            default:
                result = { command }
        }
        return result
    }

    private static String[] addLinuxShellPrefix(String command) {
        String[] commandArray = new String[3]
        commandArray[0] = "sh"
        commandArray[1] = "-c"
        commandArray[2] = command
        return commandArray
    }

    // TODO Needs to be verified on Windows
    private static String[] addWindowsShellPrefix(String command) {
        String[] commandArray = new String[3]
        commandArray[0] = "cmd"
        commandArray[1] = "/c"
        commandArray[2] = command
        return commandArray
    }

    void processOutput(String outputLine) {
        output <<= outputLine
        output <<= '\n'
        log.debug(outputLine)
    }

    String getOutput() {
        return output.toString()
    }

    boolean hasError() {
        return this.exitValue != 0
    }
}
