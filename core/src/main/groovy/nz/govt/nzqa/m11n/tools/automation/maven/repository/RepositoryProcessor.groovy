package nz.govt.nzqa.m11n.tools.automation.maven.repository

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.shell.ShellCommand
import nz.govt.nzqa.m11n.tools.automation.git.GitCommander
import org.apache.commons.io.FileUtils

import java.text.SimpleDateFormat

/**
 * Processes a repository.
 */
@Slf4j
class RepositoryProcessor {

    static SimpleDateFormat DATE_FORMATTER = new SimpleDateFormat("yyyy-MM-dd--HH-mm-ss")
    String operationDateTime = DATE_FORMATTER.format(new Date())
    String[] preserveBranchNames = [ ]
    String workParentFolderPath = "/tmp"
    String tempFolderPath = "/tmp"
    GitCommander gitCommander = new GitCommander()
    ShellCommand shellCommand = new ShellCommand()

    void setup() {
        gitCommander.showOutput = true
        gitCommander.setup()
        shellCommand.showOutput = true
        shellCommand.clearOutputOnCommandCompletion = true
    }

    /**
     * Filter down to the given repository path.
     * @param gitFolder
     * @param subdirectoryFilter
     * @return
     */
    def subdirectoryFilter(String repositoryName, String subdirectoryFilter) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName
        gitCommander.setBranch(gitFolder, preserveBranchNames.last())
        gitCommander.checkFolderSize(gitFolder)

        // Filter down to the new repository path
        gitCommander.subdirectoryFilterInFolder(gitFolder, subdirectoryFilter)
        gitCommander.cleanUp(gitFolder)
        gitCommander.checkFolderSize(gitFolder)
    }

    void checkFolderSize(String repositoryName) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName
        log.info("Folder size for gitFolder=${gitFolder}:")
        gitCommander.checkFolderSize(gitFolder)
    }

    /**
     * Pull the original repository into the new repository while preserving branches.
     * @param originalGitFolderPath
     * @param targetRepositoryName
     * @return
     */
    def pullIntoNewRepository(String sourceRepositoryName, String targetRepositoryName) {
        String originalRepositoryFolderPath = workParentFolderPath + File.separator + sourceRepositoryName
        String targetRepositoryFolderPath = workParentFolderPath + File.separator + targetRepositoryName
        gitCommander.pullIntoNewRepository(originalRepositoryFolderPath,
                workParentFolderPath, targetRepositoryName,
                preserveBranchNames)
        gitCommander.checkFolderSize(originalRepositoryFolderPath)
        gitCommander.checkFolderSize(targetRepositoryFolderPath)
    }

    /**
     * Remove the given folders from the repository. Note that folder name expansion does not occur (so wildcards do not work).
     * @param repositoryName
     * @return
     */
    def removeFolders(String repositoryName, String removalFolders) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName

        gitCommander.removeFolders(gitFolder, removalFolders)
        gitCommander.cleanUp(gitFolder)
        gitCommander.checkFolderSize(gitFolder)
    }

    /**
     * Copies the source repository to the target repository
     * @param sourceRepositoryName
     * @param targetRepositoryName
     * @return
     */
    def copyRepository(String sourceRepositoryName, String targetRepositoryName) {
        String sourceFolderPath = workParentFolderPath + File.separator + sourceRepositoryName
        File sourceFile = new File(sourceFolderPath)
        String targetFolderPath = workParentFolderPath + File.separator + targetRepositoryName
        File targetFile = new File(targetFolderPath)
        // TODO This only works for linux
        String copyCommand = "cp -a ${sourceFolderPath} ${targetFolderPath}"
        shellCommand.executeOnShellWithWorkingDirectory(copyCommand, new File(workParentFolderPath))
        // TODO Note that if we use the FileUtils copy we may not get all necessary files copied
        //try {
        //    FileUtils.copyDirectory(sourceFile, targetFile, null, true)
        //} catch (IOException|NullPointerException e) {
        //    log.error("Failure when copying ${sourceFolderPath} to ${targetFolderPath}", e)
        //}
    }

    /**
     * Deletes the given repository.
     *
     * @param repositoryName
     * @return
     */
    def deleteRepository(String repositoryName) {
        String repositoryPath = workParentFolderPath + File.separator + repositoryName
        File repositoryFile = new File(repositoryPath)
        if (!repositoryFile.deleteDir()) {
            log.warn("Failure when deleting directory=${repositoryPath}")
        }
    }

    File bigToSmallReport(String repositoryName) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName

        return gitCommander.bigToSmallReport(gitFolder, tempFolderPath)
    }

    /**
     * Creates patches from the given repository.
     * @param repositoryName
     * @return
     */
    def createPatches(String repositoryName) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName
        String patchesFolderPath = workParentFolderPath + File.separator + "patches"
        gitCommander.createFolder(patchesFolderPath)
        String patchRange = "${preserveBranchNames.first()}--${preserveBranchNames.last()}"
        String patchesContainerFolderPath = patchesFolderPath + File.separator + repositoryName + File.separator + patchRange
        gitCommander.createFolder(patchesContainerFolderPath)
        String singlePatchFilePath = "${patchesContainerFolderPath}.patch"

        gitCommander.createPatches(gitFolder, preserveBranchNames.first(), preserveBranchNames.last(),
                patchesContainerFolderPath, singlePatchFilePath)
    }

}