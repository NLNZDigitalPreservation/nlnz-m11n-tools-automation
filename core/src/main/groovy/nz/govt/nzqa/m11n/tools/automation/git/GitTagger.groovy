package nz.govt.nzqa.m11n.tools.automation.git

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.AutomationException
import nz.govt.nzqa.m11n.tools.automation.shell.ShellCommand
import nz.govt.nzqa.m11n.tools.automation.shell.ShellException

/**
 * Tags the given commit.
 */
@Slf4j
class GitTagger {

    static final String GIT_TAG_COMMAND_PREFIX = "git tag"
    static final String GIT_TAG_CHECK_EXISTS_COMMAND = "git rev-parse -q --verify \"refs/tags/"
    static final String GIT_PUSH_TAG_ORIGIN_COMMAND = "git push origin"
    static final String GIT_TAG_EXISTS_REMOTE_COMMAND = "git ls-remote --tags origin"
    static final String GIT_TAG_DELETE_LOCAL = "git tag -d"
    static final String GIT_TAG_DELETE_ORIGIN = "git push --delete origin"

    ShellCommand tagCurrentCommit(String tag, String message, File gitFolder, String commitHash)
            throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to tag current commit")
        String command = "${GIT_TAG_COMMAND_PREFIX} -a \"${tag}\" -m \"${message}\""
        if (commitHash?.trim()) {
            command += " ${commitHash}"
        }
        log.info("tagging commit with tag=[${tag}]")

        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)

        return shellCommand
    }

    boolean tagExists(String tag, File gitFolder) {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: false)
        String command = "${GIT_TAG_CHECK_EXISTS_COMMAND}${tag}\""
        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)
        // 0 and 1 are acceptable values (if the tag doesn't exist, the exit value is 1, but any other value would indicate a command error
        if (shellCommand.exitValue != 0 && shellCommand.exitValue != 1) {
            throw new ShellException("Unable to check if tag exists using command=[${shellCommand.commandUsed}], exitValue=[${shellCommand.exitValue}]")
        }
        return shellCommand.getOutput().trim()
    }

    ShellCommand pushTagToOrigin(String tag, File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to push tag to git origin")
        String command = "${GIT_PUSH_TAG_ORIGIN_COMMAND} \"${tag}\""

        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)

        return shellCommand
    }

    ShellCommand tagExistsOnOrigin(String tag, File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to push tag to git origin")
        String command = "${GIT_TAG_EXISTS_REMOTE_COMMAND} \"${tag}\""

        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)

        shellCommand
    }

    ShellCommand deleteTag(String tag, File gitFolder, boolean deleteTagOnOrigin) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to delete local tag")
        String command = "${GIT_TAG_DELETE_LOCAL} \"${tag}\""
        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)

        if (deleteTagOnOrigin) {
            shellCommand.exceptionMessagePrefix = "Unable to delete tag on origin"
            command = "${GIT_TAG_DELETE_ORIGIN} \"${tag}\""
            shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)
        }

        return shellCommand
    }

    List<String> listTags(File gitFolder) {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to list tags")
        String command = "${GIT_TAG_COMMAND_PREFIX}"
        shellCommand.executeOnShellWithWorkingDirectory(command, gitFolder)

        String tagList = shellCommand.getOutput().trim()

        List<String> tags = [ ]
        tagList.eachLine { line, count ->
            tags.add(line.trim())
        }
        return tags
    }
}
