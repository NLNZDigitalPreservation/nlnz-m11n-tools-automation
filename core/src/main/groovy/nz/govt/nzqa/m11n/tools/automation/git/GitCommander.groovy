package nz.govt.nzqa.m11n.tools.automation.git

import groovy.util.logging.Slf4j
import nz.govt.nzqa.m11n.tools.automation.AutomationException
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
        // Use a different ShellCommand because we want to maintain the output
        ShellCommand specificShellCommand = new ShellCommand()
        specificShellCommand.showOutput = shellCommand.showOutput
        specificShellCommand.clearOutputOnCommandCompletion = false
        String command = "git show ${branchName} --format=\"%H\" --no-patch"
        specificShellCommand.executeOnShellWithWorkingDirectory(command, new File(gitFolder))
        String branchHash = specificShellCommand.getOutput().split("\n")[0]
        log.info("${gitFolder} branch ${branchName} hash is '${branchHash}'")
        return branchHash
    }

    File createPatches(String gitFolder, String startingBranchName, String endingBranchName, String patchesFolder) {
        log.info("GitCommand createPatches gitFolder=${gitFolder}, startingBranchName=${startingBranchName}, endingBranchName=${endingBranchName}, patchesFolder=${patchesFolder}")
        List<PatchCommit> rootPatchCommits = createPatchCommitChildren(gitFolder, null, startingBranchName,
                                                                       endingBranchName, patchesFolder, new HashSet<PatchCommit>())

        assemblePatchesInFolder(new File(patchesFolder), rootPatchCommits, 1)

        return new File(patchesFolder)
    }

    List<PatchCommit> createPatchCommitChildren(String gitFolder, PatchCommit parentPatchCommit, String startingBranchOrHash,
                                   String endingBranchOrHash, String basePatchesFolder, Set<PatchCommit> allPatchCommits) {
        String endingCommitHash = parentPatchCommit == null ? endingBranchOrHash : parentPatchCommit.commitHash
        List<PatchCommit> patchCommitsFromLog = getPatchCommitsFromLog(gitFolder, startingBranchOrHash, endingCommitHash)
        File patchesFolder = createPatchesBase(gitFolder, startingBranchOrHash, endingCommitHash, basePatchesFolder)
        List<PatchCommit> patchCommitsFromPatches = getPatchCommitsFromPatches(patchesFolder)
        patchCommitsFromLog.each { PatchCommit logPatchCommit ->
            PatchCommit matchingPatchCommit = patchCommitsFromPatches.find { PatchCommit filePatchCommit ->
                logPatchCommit.commitHash == filePatchCommit.commitHash
            }
            if (matchingPatchCommit != null) {
                logPatchCommit.commitFile = matchingPatchCommit.commitFile
                allPatchCommits.add(logPatchCommit)
            }
        }
        String previousCommitHash = startingBranchOrHash
        patchCommitsFromLog.each { PatchCommit logPatchCommit ->
            if (logPatchCommit.commitFile == null && !allPatchCommits.contains(logPatchCommit)) {
                allPatchCommits.add(logPatchCommit)
                logPatchCommit.patchCommits = createPatchCommitChildren(gitFolder, logPatchCommit, previousCommitHash,
                null, basePatchesFolder, allPatchCommits)
            }
            previousCommitHash = logPatchCommit.commitHash
        }
        return patchCommitsFromLog
    }

    File createPatchesBase(String gitFolder, String startingBranchOrHash, String endingBranchOrHash,
                           String basePatchesFolder) {
        File folder = new File(gitFolder)
        String actualPatchesFolder = basePatchesFolder + File.separator + startingBranchOrHash + "--" + endingBranchOrHash
        createFolder(actualPatchesFolder)
        String commandForDirectory = "git format-patch ${startingBranchOrHash}..${endingBranchOrHash} " +
                "--output-directory \"${actualPatchesFolder}\""
        shellCommand.executeOnShellWithWorkingDirectory(commandForDirectory, folder)

        return new File(actualPatchesFolder)

    }

    List<PatchCommit> getPatchCommitsFromLog(String gitFolder, String startingBranchOrHash,
                                             String endingBranchOrHash) {
        File folder = new File(gitFolder)
        // Use a different ShellCommand because we want to maintain the output
        ShellCommand specificShellCommand = new ShellCommand()
        specificShellCommand.showOutput = shellCommand.showOutput
        specificShellCommand.clearOutputOnCommandCompletion = false
        specificShellCommand.executeOnShellWithWorkingDirectory("git log ${startingBranchOrHash}..${endingBranchOrHash}", folder)

        return extractPatchCommitsFromLog(specificShellCommand.getOutput()).reverse()
    }

    List<PatchCommit> extractPatchCommitsFromLog(String gitLog) {
        List<PatchCommit> patchCommits = [ ]
        def commitPattern = /^commit (\b[0-9a-f]{5,40}\b)/
        gitLog.eachLine { String line ->
            def commitMatcher = (line =~ commitPattern)
            if (commitMatcher.size() > 0) {
                patchCommits.add(new PatchCommit(commitHash: commitMatcher[0][1]))
            }
        }
        return patchCommits
    }

    List<PatchCommit> getPatchCommitsFromPatches(File patchesFolder) {
        List<PatchCommit> patchCommits = [ ]
        List<File> patchesFiles = listPatchesFiles(patchesFolder, 1)

        patchesFiles.each { File patchFile ->
            String commitHash = extractCommitHashFromFileCommit(patchFile)
            patchCommits.add(new PatchCommit(commitHash: commitHash, commitFile: patchFile))
        }
        return patchCommits
    }

    String extractCommitHashFromFileCommit(File patchFile) {
        def commitPattern = /^From (\b[0-9a-f]{5,40}\b) /
        String commitMatch = null
        patchFile.eachLine { String line ->
            if (commitMatch == null) {
                def commitMatcher = (line =~ commitPattern)
                if (commitMatcher.size() > 0) {
                    commitMatch = commitMatcher[0][1]
                }
            }
        }
        if (commitMatch == null) {
            throw new AutomationException("Unable to find commit SHA in patch file=${patchFile.absolutePath}")
        }
        return commitMatch
    }

    int assemblePatchesInFolder(File patchesFolder, List<PatchCommit> rootPatchCommits, int startingIndex) {
        int patchIndex = startingIndex
        rootPatchCommits.each { PatchCommit patchCommit ->
            if (patchCommit.commitFile != null) {
                String patchNumber =  String.format('%04d', patchIndex)
                File targetFile = new File(patchesFolder, patchNumber + "--" + patchCommit.commitFile.name)
                String copyCommand = "cp -a ${patchCommit.commitFile.absolutePath} ${targetFile.absolutePath}"
                shellCommand.executeOnShellWithWorkingDirectory(copyCommand, patchesFolder)
                patchIndex++
            } else if (patchCommit.patchCommits != null) {
                patchIndex = assemblePatchesInFolder(patchesFolder, patchCommit.patchCommits, patchIndex)
            } else {
                log.warn("patchCommit with commitHash=${patchCommit.commitHash} has no commitFile and no patchCommits! Cannot write out patch.")
            }
        }
        return patchIndex
    }

    List<File> listPatchesFiles(File patchesFolder, int startingPatchIndex) {
        List<File> patchesFiles = [ ]
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
            patchesFiles = expectedKeys.collect { Integer key ->
                indexToFileMap.get(key)
            }
        } else {
            throw new AutomationException("startingPatchIndex=${startingPatchIndex} must be greater than zero.")
        }
        return patchesFiles
    }

    ShellCommand applyPatch(String gitFolder, File patchFile, boolean exceptionIfPatchFails = true) {
        File folder = new File(gitFolder)
        ShellCommand specificShellCommand = new ShellCommand()
        specificShellCommand.showOutput = shellCommand.showOutput
        specificShellCommand.clearOutputOnCommandCompletion = shellCommand.clearOutputOnCommandCompletion
        specificShellCommand.exceptionOnError = exceptionIfPatchFails
        specificShellCommand.exceptionMessagePrefix = "Unable to apply patch:"
        return specificShellCommand.executeOnShellWithWorkingDirectory("git am --ignore-whitespace --whitespace=warn ${patchFile.absolutePath}", folder)
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

    def createBranch(String folderPath, String branchName, String baseBranch) {
        File folder = new File(folderPath)
        shellCommand.executeOnShellWithWorkingDirectory("git checkout --no-track -b ${branchName} origin/${baseBranch}", folder)
        shellCommand.executeOnShellWithWorkingDirectory("git config branch.${branchName}.remote origin", folder)
        shellCommand.executeOnShellWithWorkingDirectory("git config branch.${branchName}.merge refs/heads/${branchName}", folder)
    }

    def checkoutBranch(String folderPath, String branchName, boolean onlyCheckoutIfItExists = true) {
        File folder = new File(folderPath)
        ShellCommand specificShellCommand = new ShellCommand()
        specificShellCommand.showOutput = shellCommand.showOutput
        specificShellCommand.clearOutputOnCommandCompletion = false
        boolean exists = false
        if (onlyCheckoutIfItExists) {
            // If we use grep the output will end up in a separate process and we may not get the output properly.
            specificShellCommand.executeOnShellWithWorkingDirectory("git branch -a", folder)
            List<String> matches = specificShellCommand.getOutput().findAll(/.*${branchName}.*?/)
            if (!matches.isEmpty()) {
                exists = true
            }
        }
        if ((onlyCheckoutIfItExists && exists) || !onlyCheckoutIfItExists) {
            specificShellCommand.executeOnShellWithWorkingDirectory("git checkout \"${branchName}\"", folder)
        }
    }

    def rebaseBranch(String folderPath, String branchName, String baseBranch) {
        File folder = new File(folderPath)
        setBranch(folderPath, branchName)
        shellCommand.executeOnShellWithWorkingDirectory("git rebase ${baseBranch}", folder)
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

    def removeRemoteOrigin(String folderPath) {
        File folder = new File(folderPath)
        shellCommand.executeOnShellWithWorkingDirectory("git remote rm origin", folder)
    }

    def setRemoteOrigin(String folderPath, String branchName, String remoteOrigin, boolean doPull = true) {
        File folder = new File(folderPath)
        setBranch(folderPath, branchName)
        shellCommand.executeOnShellWithWorkingDirectory("git remote set-url origin ${remoteOrigin}", folder)
        if (doPull) {
            shellCommand.executeOnShellWithWorkingDirectory("git pull", folder)
        }
    }

    def pushBranchOrigin(String folderPath, String branchName) {
        File folder = new File(folderPath)
        setBranch(folderPath, branchName)
        shellCommand.executeOnShellWithWorkingDirectory("git push origin HEAD", folder)
    }
}
