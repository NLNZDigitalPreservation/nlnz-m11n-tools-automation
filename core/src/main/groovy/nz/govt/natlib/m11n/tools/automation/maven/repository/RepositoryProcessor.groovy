package nz.govt.natlib.m11n.tools.automation.maven.repository


import groovy.util.logging.Slf4j
import nz.govt.natlib.m11n.tools.automation.AutomationException
import nz.govt.natlib.m11n.tools.automation.shell.ShellCommand
import nz.govt.natlib.m11n.tools.automation.git.GitCommander

/**
 * Processes a repository.
 */
@Slf4j
class RepositoryProcessor {

    String[] preserveBranchNames = [ ]
    File patchesFolder
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
    boolean deleteRepository(String repositoryName) {
        boolean success = false
        String repositoryPath = workParentFolderPath + File.separator + repositoryName
        File repositoryFile = new File(repositoryPath)
        if (repositoryFile.deleteDir()) {
            success = true
        } else {
            log.warn("Failure when deleting directory=${repositoryPath}")
        }
        return success
    }

    File bigToSmallReport(String repositoryName) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName

        return gitCommander.bigToSmallReport(gitFolder, tempFolderPath)
    }

    String generatePatchesFolderPath(String repositoryName, String projectNameKey) {
        String patchesFolderPath = workParentFolderPath + File.separator + "patches" + File.separator + projectNameKey
        String patchRange = "${preserveBranchNames.first()}--${preserveBranchNames.last()}"
        String patchesContainerFolderPath = patchesFolderPath + "-" + patchRange

        return patchesContainerFolderPath
    }

    /**
     * Creates patches from the given repository.
     * @param repositoryName
     * @return
     */
    File createPatches(String repositoryName, String projectNameKey) {
        String gitFolder = workParentFolderPath + File.separator + repositoryName
        String patchesContainerFolderPath
        if (patchesFolder == null) {
            patchesContainerFolderPath = generatePatchesFolderPath(repositoryName, projectNameKey)
        } else {
            patchesContainerFolderPath = patchesFolder.getAbsolutePath()
        }
        gitCommander.createFolder(patchesContainerFolderPath)

        return gitCommander.createPatches(gitFolder, preserveBranchNames.first(), preserveBranchNames.last(),
                patchesContainerFolderPath)
    }

    void applyPatches(String patchTargetRepositoryPath, String patchTargetRepositoryBranch, File patchesFolder,
                      int startingPatchIndex, boolean exceptionIfPatchFails = true) {
        gitCommander.checkoutBranch(patchTargetRepositoryPath, patchTargetRepositoryBranch)
        if (startingPatchIndex >= 0) {
            Map<Integer, File> indexToFileMap = [ : ]

            // Note that placing a tilde (~) in front of the pattern creates a pattern instance
            def pattern = /^(\d\d\d\d)-.*?\.patch/
            patchesFolder.eachFileMatch(~pattern) { File matchFile ->
                def match = matchFile.name =~ pattern
                String number = match[0][1]
                Integer actualNumber = Integer.parseInt(number)
                if (actualNumber >= startingPatchIndex) {
                    indexToFileMap.put(actualNumber, matchFile)
                }
            }
            // as per http://mrhaki.blogspot.co.nz/2010/04/groovy-goodness-sorting-map.html
            List<Integer> expectedKeys = indexToFileMap.sort()*.key
            List<File> sortedPatches = expectedKeys.collect { Integer key ->
                indexToFileMap.get(key)
            }
            sortedPatches.each { File patchFile ->
                log.info("Patch file=${patchFile.absolutePath}")
                ShellCommand shellCommand = gitCommander.applyPatch(patchTargetRepositoryPath, patchFile, exceptionIfPatchFails)
            }
        } else {
            throw new AutomationException("startingPatchIndex=${startingPatchIndex} must be greater than zero.")
        }
    }
}