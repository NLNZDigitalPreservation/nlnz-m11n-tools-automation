package nz.govt.natlib.m11n.tools.automation.shell

import groovy.util.logging.Slf4j

import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardOpenOption

/**
 * Provides a means to perform a shell command from groovy.
 */
@Slf4j
class ShellCommand {
    static byte[] NEWLINE_BYTES = "\n".getBytes()

    def exitValue
    Path internalOutputPath
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
        log.info("Executing\n  ${command}\n  in: ${workingDirectory.getAbsolutePath()}")
        def process = new ProcessBuilder(addCommandPrefix(command))
                .directory(workingDirectory)
                .redirectErrorStream(true)
                .start()
        if (internalOutputPath == null) {
            internalOutputPath = Files.createTempFile("ShellCommand-", ".log")
            internalOutputPath.toFile().deleteOnExit()
        }
        process.inputStream.eachLine { processOutput(it) }
        process.waitFor()
        exitValue = process.exitValue()

        if (clearOutputOnCommandCompletion) {
            internalOutputPath.toFile().delete()
            internalOutputPath = null
        }
        if (this.hasError() && this.exceptionOnError) {
            throw new ShellException("${exceptionMessagePrefix} using command=[${this.commandUsed}] in working directory=[${workingDirectory}], exitValue=[${this.exitValue}]")
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

    private void processOutput(String outputLine) {
        Files.write(internalOutputPath, outputLine.getBytes(), StandardOpenOption.APPEND)
        Files.write(internalOutputPath, NEWLINE_BYTES, StandardOpenOption.APPEND)
        if (showOutput) {
            log.info(outputLine)
        } else {
            log.debug(outputLine)
        }
    }

    String getOutput(int maximumStringLength = 1024000) {
        if (internalOutputPath == null) {
            return new String()
        }
        int totalCharacters = 0
        byte[] data = new byte[16384]
        ByteArrayOutputStream buffer = new ByteArrayOutputStream()
        InputStream fileInputStream = new FileInputStream(internalOutputPath.toFile())
        boolean continueReading = true
        while (continueReading) {
            int charactersRead = fileInputStream.read(data, 0, data.length)
            if (charactersRead == -1) {
                continueReading = false
            } else {
                int charactersRemaining = maximumStringLength - totalCharacters
                if (charactersRemaining < charactersRead) {
                    charactersRead = charactersRemaining
                    continueReading = false
                }
                totalCharacters += charactersRead
                buffer.write(data, 0, charactersRead)
            }
        }
        buffer.flush()

        return new String(buffer.toByteArray())
    }

    File getOutputFile() {
        if (internalOutputPath == null) {
            log.warn("ShellCommand: Cannot return output file as it has been cleared. Set 'clearOutputOnCommandCompletion' to false to obtain output file.")
            return null
        }
        return internalOutputPath.toFile()
    }

    boolean hasError() {
        return this.exitValue != 0
    }
}
