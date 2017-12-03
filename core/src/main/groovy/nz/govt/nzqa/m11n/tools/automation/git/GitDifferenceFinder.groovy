package nz.govt.nzqa.m11n.tools.automation.git

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.AutomationException
import nz.govt.nzqa.m11n.tools.automation.file.FilePathDifferenceExtractor
import nz.govt.nzqa.m11n.tools.automation.shell.ShellCommand

/**
 * Determines whether there has been a change in a git repository.
 *
 * There are two cases: a general change or a change in a specific folder.
 */
@Slf4j
class GitDifferenceFinder {
    static final String GIT_DIFF_COMMAND = "git diff"
    static final String NAME_ONLY_OPTION = "--name-only"
    static final String CACHED_OPTION = "--cached"
    static final String OPTIONS_ARGUMENTS_SEPARATOR = "--"
    static final String CURRENT_FOLDER = "."
    static final String PATHSPEC_MAGIC_EXCLUDE = "':(exclude)"
    static final String SPACE = " "
    static final String GIT_LS_FILES_COMMAND = "git ls-files"
    static final String LS_FILES_OPTIONS = "--exclude-standard --others"
    static final String LS_FILES_EXCLUDE_FOLDER = "--exclude="

    /**
     * Returns the git diff base command. Note that the commit hash can be null.
     *
     * @param commitHash
     * @return
     */
    String getGitDiffBaseCommand(String commitHash) {
        StringBuilder command = new StringBuilder()
        command.append(GIT_DIFF_COMMAND)
        if (commitHash?.trim()) {
            command.append(SPACE)
            command.append(commitHash)
        }
        command.append(SPACE)
        command.append(NAME_ONLY_OPTION)
        command.append(SPACE)

        return command.toString()
    }

    String getGitListUntrackedFilesBaseCommand(File gitFolder, File includeFolder, List<File> excludeFolders) {
        StringBuilder command = new StringBuilder()
        command.append(GIT_LS_FILES_COMMAND)
        command.append(SPACE)
        if (includeFolder != null) {
            String includeSubpath = FilePathDifferenceExtractor.subpathDifference(gitFolder, includeFolder)
            if (includeSubpath != null) {
                if (!includeSubpath.isEmpty()) {
                    command.append(includeSubpath.trim())
                } else {
                    command.append(".")
                }
            }
        } else {
            command.append(".")
        }
        command.append(SPACE)
        command.append(LS_FILES_OPTIONS)
        command.append(SPACE)

        excludeFolders.each { excludeFolder ->
            if (excludeFolder != null) {
                String excludeSubpath = FilePathDifferenceExtractor.subpathDifference(gitFolder, excludeFolder)
                if (excludeSubpath) {
                    // non-null && not empty
                    command.append(LS_FILES_EXCLUDE_FOLDER)
                    command.append(excludeSubpath.trim())
                    command.append(SPACE)
                } else {
                    log.warn("Unrecognised exclude folder for subpath extraction=${excludeFolder}")
                }
            }
        }

        return command.toString()
    }

    ShellCommand executeCommand(String baseCommand, String exceptionMessagePrefix, File gitFolder,
                                String options, File includeFolder, List<File> excludeFolders) throws AutomationException {
        StringBuilder command = new StringBuilder(baseCommand)
        command.append(SPACE)
        if (options?.trim()) {
            command.append(options)
            command.append(SPACE)
        }
        command.append(OPTIONS_ARGUMENTS_SEPARATOR)
        command.append(SPACE)
        if (includeFolder != null) {
            command.append("\"${includeFolder.getCanonicalPath().trim()}\" ")
        } else {
            command.append(CURRENT_FOLDER)
            command.append(SPACE)
        }
        excludeFolders.each { File excludeFolder ->
            if (excludeFolder != null) {
                command.append(PATHSPEC_MAGIC_EXCLUDE)
                command.append(excludeFolder.getCanonicalPath().trim())
                command.append("'")
                command.append(SPACE)
            }
        }
        ShellCommand shellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: exceptionMessagePrefix)
        shellCommand.executeOnShellWithWorkingDirectory(command.toString(), gitFolder)

        return shellCommand
    }

    boolean hasRepositoryChanged(File gitFolder) {
        return hasRepositoryChangedSinceCommit((String) null, gitFolder)
    }

    boolean hasRepositoryChangedSinceCommit(String commitHash, File gitFolder) throws AutomationException {
        if (gitFolder == null) {
            throw new AutomationException("Unable to determine repository changes when gitFolder=null")
        }
        return hasRepositoryChangedSinceCommit(commitHash, gitFolder, null, null)
    }

    /**
     * A repository has changed if there have been commits since the given commit.
     * If the commit hash has not been specificed then the check is whether there are any
     * staged or unstaged changes since the last commit.
     *
     * @param commitHash
     * @param gitRootFolder
     * @param includeFolder
     * @param excludeFolders
     * @return
     */
    boolean hasRepositoryChangedSinceCommit(String commitHash, File gitRootFolder, File includeFolder,
                                            List<File> excludeFolders) throws AutomationException {
        if (commitHash != null && !commitHash?.trim()) {
            throw new AutomationException("Unable to determine repository changes when git commit hash=null")
        }
        List<File> allFolders = [ gitRootFolder, includeFolder ]
        if (excludeFolders != null) {
            allFolders.addAll(excludeFolders)
        }
        ensureFoldersExist(allFolders)

        String baseCommand = getGitDiffBaseCommand(commitHash)

        ShellCommand changesWithStaged = executeCommand(baseCommand, "Unable to find changes", gitRootFolder, CACHED_OPTION, includeFolder, excludeFolders)
        if (nonEmptyResult(changesWithStaged.getOutput())) {
            log.info("Changes with staged on gitFolder=${gitRootFolder}, includeFolder=${includeFolder}, excludeFolders=${excludeFolders}")
            return true
        }

        ShellCommand changesWithUnstaged = executeCommand(baseCommand, "Unable to find changes", gitRootFolder, null, includeFolder, excludeFolders)
        if (nonEmptyResult(changesWithUnstaged.getOutput())) {
            log.info("Changes with unstaged on gitFolder=${gitRootFolder}, includeFolder=${includeFolder}, excludeFolders=${excludeFolders}")
            return true
        }

        String untrackedCommand = getGitListUntrackedFilesBaseCommand(gitRootFolder, includeFolder, excludeFolders)
        ShellCommand untrackedShellCommand = new ShellCommand(exceptionOnError: true, exceptionMessagePrefix: "Unable to find untracked")
        untrackedShellCommand.executeOnShellWithWorkingDirectory(untrackedCommand.toString(), gitRootFolder)
        if (nonEmptyResult(untrackedShellCommand.getOutput())) {
            log.info("Changes with untracked on gitFolder=${gitRootFolder}, includeFolder=${includeFolder}, excludeFolders=${excludeFolders}")
            return true
        }

        return false
    }

    boolean ensureFoldersExist(List<File> folders) {
        // folders may be null but if non-null they must exist and be a directory
        folders.each { File folder ->
            if (folder != null && !folder.exists() && !folder.isDirectory()) {
                throw new AutomationException("folder=[${folder.getCanonicalPath()} must exist and must be a directory")
            }
        }
        return true
    }

    boolean nonEmptyResult(def result) {
        return result?.trim()
    }
}
