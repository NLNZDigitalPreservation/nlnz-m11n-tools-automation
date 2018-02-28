package nz.govt.nzqa.m11n.tools.automation.git

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.shell.ShellCommand

import java.text.SimpleDateFormat

/**
 * Provides access to some common git commands.
 */
@Slf4j
class GitCommander {
    private static String GIT_EACH_UPDATE_REF = "git for-each-ref --format=\"%(refname)\" refs/original/ | xargs -n 1 git update-ref -d"
    private static String GIT_REFLOG_EXPIRE = "git reflog expire --expire=now --all"
    private static String GIT_RESET_HARD = "git reset --hard"
    private static String GIT_AGGRESSIVE_PRUNE = "git gc --aggressive --prune=now"
    private static String GIT_REPACK = "git repack -a -d -l"
    private static String GIT_CLEAN = "git clean -f -d"

    ShellCommand shellCommand = new ShellCommand()
    Boolean showOutput = false

    void setup() {
        shellCommand.showOutput = showOutput
        shellCommand.clearOutputOnCommandCompletion = true
    }

    def setBranch(String gitFolder, String branchName) {
        String command = "git checkout ${branchName}"
        shellCommand.executeOnShellWithWorkingDirectory(command, new File(gitFolder))
    }

    /**
     * Performs a git --subdirectory filter to the given target folder in the given gitFolder
     */
    def subdirectoryFilterInFolder(String gitFolder, String targetFolderPath) {
        String command = "git filter-branch --tag-name-filter cat --prune-empty " +
            "--subdirectory-filter \"${targetFolderPath}\" -- --all"
        shellCommand.executeOnShellWithWorkingDirectory(command, new File(gitFolder))
    }

    /**
     * Remove the list of removal files or folders
     * @param gitFolder
     * @param removalFilesOrFolders
     * @return
     */
    def removeFolders(String gitFolder, String removalFilesOrFolders) {
        // Note that wildcards will not work for this shell command.
        // In order to do any shell expansions for the removalFileOrFolders, those values
        // will need to be determined elsewhere
        String command = 'git filter-branch --prune-empty --index-filter ' +
                '\'git rm -rf --cached --ignore-unmatch ' +
                "${removalFilesOrFolders}" +
                '\' --tag-name-filter cat -- --all'
        shellCommand.executeOnShellWithWorkingDirectory(command, new File(gitFolder))
    }

    /**
     * Cleans up after a modification operation.
     */
    def cleanUp(String gitFolder) {
        log.info("NOTE that the command 'git for-each-ref ...'\n" +
                         "     will cause a usage warning if there are no matching references for the update-ref command.\n" +
                         "     This warning can be safely ignored (no update-ref's took place).")
        File folder = new File(gitFolder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_EACH_UPDATE_REF, folder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_REFLOG_EXPIRE, folder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_RESET_HARD, folder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_AGGRESSIVE_PRUNE, folder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_REPACK, folder)
        shellCommand.executeOnShellWithWorkingDirectory(GIT_CLEAN, folder)
    }

    /**
     * Checks the size of the folder.
     * @param folderPath
     * @return
     */
    def checkFolderSize(String folderPath) {
        shellCommand.executeOnShellWithWorkingDirectory('du -sh', new File(folderPath))
    }

    /**
     * Pulls the given repository into a newly created repository and recreates the given branches.
     * Note that the branch is set to the LAST branch on both repositories and in order for the command
     * to work properly the LAST branch must have the other branch commits in its history.
     * @param gitFolder
     * @param newRepositoryParentFolderPath
     * @param newRepositoryName
     * @param recreateBranchNames
     * @return
     */
    def pullIntoNewRepository(String gitFolder, String newRepositoryParentFolderPath, String newRepositoryName,
                              String... recreateBranchNames) {
        File newRepositoryFolder = new File(newRepositoryParentFolderPath + File.separator + newRepositoryName)
        def branchHashMap = [:]
        recreateBranchNames.each { branchName ->
            branchHashMap.put(branchName, getBranchHash(gitFolder, branchName))
        }
        shellCommand.executeOnShellWithWorkingDirectory("git checkout ${recreateBranchNames.last()}", new File(gitFolder))
        shellCommand.executeOnShellWithWorkingDirectory("git init ${newRepositoryName}", newRepositoryFolder.getParentFile())
        shellCommand.executeOnShellWithWorkingDirectory("git pull ${gitFolder}", newRepositoryFolder)
        branchHashMap.each { branchAndHashEntry ->
            shellCommand.executeOnShellWithWorkingDirectory(
                    "git checkout -b ${branchAndHashEntry.key} ${branchAndHashEntry.value}", newRepositoryFolder)
        }
        shellCommand.executeOnShellWithWorkingDirectory("git checkout ${recreateBranchNames.last()}", newRepositoryFolder)
    }

    def getBranchHash(String gitFolder, String branchName) {
        String command = "git show ${branchName} --format=\"%H\" --no-patch"
        shellCommand.executeOnShellWithWorkingDirectory(command, new File(gitFolder))
        String branchHash = shellCommand.output.toString().split("\n")[0]
        log.info("${gitFolder} branch ${branchName} hash is '${branchHash}'")
        return branchHash
    }

    def createPatches(String gitFolder, String startingBranchName, String endingBranchName, String patchesFolder, String singlePatchFilePath) {
        createFolder(patchesFolder)
        File folder = new File(gitFolder)
        String commandForDirectory = "git format-patch ${startingBranchName}..${endingBranchName} " +
                "--output-directory \"${patchesFolder}\""
        shellCommand.executeOnShellWithWorkingDirectory(commandForDirectory, folder)
        String commandForSingleFile = "git format-patch ${startingBranchName}..${endingBranchName} " +
                "--stdout > \"${singlePatchFilePath}\""
        shellCommand.executeOnShellWithWorkingDirectory(commandForSingleFile, folder)
    }

    File bigToSmallReport(String gitFolder, String workingDirectory) {
        println("workingDirectory=${workingDirectory}")
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd--HH-mm-ss")
        String reportDate = dateFormatter.format(new Date())
        String convertedFolderName = gitFolder.replace('/', '-').replace(' ', '_')
        File folder = new File(gitFolder)

        // Because the -All-File-SHAs- and -Big-Objects- files may be too large for the command line,
        // output their sorted contents to separate files

        // Get a list of objects
        String allFileShasReportFilenamePrefix = workingDirectory + File.separator + convertedFolderName + "-All-File-SHAs-"
        String allFileShasReportFilename = allFileShasReportFilenamePrefix + reportDate + ".txt"
        String allFileShasReportSortedFilename = allFileShasReportFilenamePrefix + "SORTED-" + reportDate + ".txt"
        String allFileShasReportCommand = "git rev-list --objects --all | sort -k 2 > ${allFileShasReportFilename}"
        shellCommand.executeOnShellWithWorkingDirectory(allFileShasReportCommand, folder)
        shellCommand.executeOnShellWithWorkingDirectory("sort ${allFileShasReportFilename} > ${allFileShasReportSortedFilename}", folder)

        // Get the last object SHA for all committed files and sort them in biggest to smallest order
        String bigObjectsReportFilenamePrefix = workingDirectory + File.separator + convertedFolderName + "-Big-Objects-"
        String bigObjectsReportFilename = bigObjectsReportFilenamePrefix + reportDate + ".txt"
        String bigObjectsReportSortedFilename = bigObjectsReportFilenamePrefix + "SORTED-" + reportDate + ".txt"
        String bigObjectsCommand = "git gc && git verify-pack -v .git/objects/pack/pack-*.idx | " +
                "egrep \"^\\w+ blob\\W+[0-9]+ [0-9]+ [0-9]+\$\" | sort -k 3 -n -r > ${bigObjectsReportFilename}"
        shellCommand.executeOnShellWithWorkingDirectory(bigObjectsCommand, folder)
        shellCommand.executeOnShellWithWorkingDirectory("sort ${bigObjectsReportFilename} > ${bigObjectsReportSortedFilename}", folder)

        // Take the ...-Big-Objects-....txt result and iterate through each line of it to find the SHA,
        // file size in bytes, and real file name (you also need the ...-All-File-SHAs-....txt output file from above):
        String bigToSmallReportFilename = workingDirectory + File.separator + convertedFolderName +
                "-Report-Big-To-Small-" + reportDate + ".txt"
        String bigToSmallReportCommand = "join ${bigObjectsReportSortedFilename} ${allFileShasReportSortedFilename} | " +
                "sort -k 3 -n -r | cut -f 1,3,6- -d \\  > ${bigToSmallReportFilename}"
        println("bigToSmallReportFilename=${bigToSmallReportFilename}")
        shellCommand.executeOnShellWithWorkingDirectory(bigToSmallReportCommand, folder)

        return new File(bigToSmallReportFilename)
    }

    def createFolder(String folderPath) {
        File folder = new File(folderPath)
        folder.mkdirs()
    }

    def mergeTwoRepositories(String repoToMerge, String repoToMergeDir, String finalRepositoryDir){
        File finalRepositoryFolder = new File(finalRepositoryDir)
        shellCommand.executeOnShellWithWorkingDirectory("git remote add ${repoToMerge} ${repoToMergeDir}", finalRepositoryFolder)
        shellCommand.executeOnShellWithWorkingDirectory("git fetch ${repoToMerge}", finalRepositoryFolder)
        // --allow-unrelated-histories is only available for git >= 2.9
        shellCommand.executeOnShellWithWorkingDirectory("git merge --allow-unrelated-histories ${repoToMerge}/master", finalRepositoryFolder)
        shellCommand.executeOnShellWithWorkingDirectory("git merge ${repoToMerge}/master", finalRepositoryFolder)
        shellCommand.executeOnShellWithWorkingDirectory("git remote remove ${repoToMerge}", finalRepositoryFolder)
    }

    def initGitFolder(String folderPath) {
        shellCommand.executeOnShellWithWorkingDirectory("git init", new File(folderPath))
    }

    def createGitAttributes (String folderPath) {
        File folder = new File(folderPath)
        shellCommand.executeOnShellWithWorkingDirectory("git config merge.ours.driver true", folder)
        shellCommand.executeOnShellWithWorkingDirectory("echo .gitignore merge=ours >> .gitattributes", folder)
        shellCommand.executeOnShellWithWorkingDirectory("git add .gitattributes && git commit -m 'Add .gitattributes'", folder)
    }

    def moveToEqaRoot(String folderPath) {
        File folder = new File(folderPath)
        shellCommand.executeOnShellWithWorkingDirectory("mkdir -p ${folderpath}", folder)
        shellCommand.executeOnShellWithWorkingDirectory("git mv * ${folderpath}/", folder)
        shellCommand.executeOnShellWithWorkingDirectory("git add -A && git commit -m 'Initial commit and folder structure setup'", folder)
    }

    def deleteGitIgnore(String folderPath) {
        shellCommand.executeOnShellWithWorkingDirectory("rm .gitignore", new File(folderPath))
    }
}
