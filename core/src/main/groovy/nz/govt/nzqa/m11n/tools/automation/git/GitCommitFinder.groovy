package nz.govt.nzqa.m11n.tools.automation.git

import nz.govt.nzqa.m11n.tools.automation.AutomationException
import nz.govt.nzqa.m11n.tools.automation.shell.ShellCommand

class GitCommitFinder {
    static final String GIT_LIST_TAGS_COMMAND = "git tag"
    static final String GIT_CURRENT_COMMIT_HASH_COMMAND = "git rev-parse HEAD"
    static final String GIT_GET_CURRENT_BRANCH = "git rev-parse --abbrev-ref HEAD"
    static final String GIT_COMMITS_NOT_IN_OTHER_BRANCH = "git cherry"
    static final String GIT_GET_ORIGIN_URL = "git config --get remote.origin.url"
    static final String GIT_CHANGES_MADE_SINCE_CURRENT_COMMIT = "git diff HEAD"

    String listTags(File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find matching tags")
        shellCommand.executeOnShellWithWorkingDirectory(GIT_LIST_TAGS_COMMAND, gitFolder)

        return shellCommand.getOutput()
    }

    String getCurrentCommit(File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find current commit")
        shellCommand.executeOnShellWithWorkingDirectory(GIT_CURRENT_COMMIT_HASH_COMMAND, gitFolder)

        return shellCommand.getOutput()
    }

    String findCurrentBranch(File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find current branch")
        shellCommand.executeOnShellWithWorkingDirectory(GIT_GET_CURRENT_BRANCH, gitFolder)

        return shellCommand.getOutput().trim()
    }

    String findChangesSinceCurrentCommit(File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find changes since current commit")
        shellCommand.executeOnShellWithWorkingDirectory(GIT_CHANGES_MADE_SINCE_CURRENT_COMMIT, gitFolder)

        return shellCommand.getOutput().trim()
    }

    // TODO This actually belongs in a more generic Git... class (GitAttributes?)
    String findCurrentOriginUrl(File gitFolder) throws AutomationException {
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find current origin URL")
        shellCommand.executeOnShellWithWorkingDirectory(GIT_GET_ORIGIN_URL, gitFolder)

        return shellCommand.getOutput().trim()
    }

    String cherryCommitsInOriginBranch(String branchName, File gitFolder) throws AutomationException {
        if (!branchName?.trim()) {
            throw new AutomationException("branchName=[${branchName}] must be specified")
        }
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find if there are cherry commits in origin")
        shellCommand.executeOnShellWithWorkingDirectory("${GIT_COMMITS_NOT_IN_OTHER_BRANCH} origin/${branchName}", gitFolder)

        return shellCommand.getOutput().trim()
    }
}
