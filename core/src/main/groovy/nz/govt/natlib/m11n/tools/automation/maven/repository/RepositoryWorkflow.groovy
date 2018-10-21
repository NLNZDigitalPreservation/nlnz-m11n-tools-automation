package nz.govt.natlib.m11n.tools.automation.maven.repository

import groovy.util.logging.Slf4j

/**
 * A conditional workflow for processing a repository.
 */
@Slf4j
class RepositoryWorkflow {
    RepositoryProcessor repositoryProcessor

    Boolean doStartWithCopy = false
    Boolean doSubdirectoryFilter = false
    Boolean doPullIntoNewRepository = false
    Boolean doCopyToWorkingRepository = false
    Boolean doRemoveFolders = false
    Boolean doPostRemovalFoldersPull = false
    Boolean doPostRemoveFoldersBigToSmallReport = false
    Boolean doDeleteIntermediateRepositories = false
    Boolean doCreatePatches = false
    Boolean doBigToSmallReport = false
    Boolean doApplyPatches = false
    Boolean doFinalRepositorySize = false

    String[] preserveBranchNames = [ ]
    String workParentFolderPath = '/tmp'
    String tempFolder = '/tmp'
    String reportsFolderPath = '/tmp'

    String repositoryBaseName = ''
    Integer sequenceIndex = 0
    String currentRepositoryName
    String previousRepositoryName

    String patchesFolderPath
    String patchTargetRepositoryPath
    String patchTargetRepositoryBranch

    String projectNameKey

    String workflowName
    String subdirectoryFilterPath
    String removalFolders

    /**
     * Note that the 'currentRepositoryName' will be "${repositoryBaseName}-0"
     * @return
     */
    def setup() {
        String logFilePathStart = workParentFolderPath + File.separator + "logs"
        log.info("Starting workflow ${workflowName}")

        repositoryProcessor = new RepositoryProcessor()
        repositoryProcessor.preserveBranchNames = preserveBranchNames
        repositoryProcessor.workParentFolderPath = workParentFolderPath
        repositoryProcessor.tempFolderPath = tempFolder
        repositoryProcessor.reportsFolderPath = reportsFolderPath
        repositoryProcessor.setup()

        nextRepositoryName()
    }

    def nextRepositoryName() {
        previousRepositoryName = currentRepositoryName
        currentRepositoryName = repositoryBaseName + '-' + sequenceIndex
        log.info("\n***************\nCurrent repository name is '${currentRepositoryName}'\n")
        sequenceIndex += 1
        return currentRepositoryName
    }

    def doWorkflow() {

        log.info("\n***************\ndoStartWithCopy=${doStartWithCopy}\n")
        if (doStartWithCopy) {
            repositoryProcessor.copyRepository(currentRepositoryName, nextRepositoryName())
        }

        log.info("\n***************\ndoSubdirectoryFilter=${doSubdirectoryFilter}\n")
        if (doSubdirectoryFilter) {
            repositoryProcessor.subdirectoryFilter(currentRepositoryName, subdirectoryFilterPath)
        }

        log.info("\n***************\ndoPullIntoNewRepository=${doPullIntoNewRepository}\n")
        if (doPullIntoNewRepository) {
            repositoryProcessor.pullIntoNewRepository(currentRepositoryName, nextRepositoryName())
        }

        log.info("\n***************\ndoCopyToWorkingRepository=${doCopyToWorkingRepository}\n")
        if (doCopyToWorkingRepository) {
            repositoryProcessor.copyRepository(currentRepositoryName, nextRepositoryName())
        }

        log.info("\n***************\ndoBigToSmallReport=${doBigToSmallReport}\n")
        if (doBigToSmallReport) {
            File bigToSmallReportFile = repositoryProcessor.bigToSmallReport(currentRepositoryName, projectNameKey)
            log.info(bigToSmallReportFile.text)
        }

        log.info("\n***************\ndoRemoveFolders=${doRemoveFolders}\n")
        if (doRemoveFolders) {
            if (removalFolders != null && !removalFolders.isEmpty() && !removalFolders.isAllWhitespace()) {
                repositoryProcessor.removeFolders(currentRepositoryName, removalFolders)

                // don't pull into a new repository if nothing changes
                log.info("\n***************\ndoPostRemovalFoldersPull=${doPostRemovalFoldersPull}\n")
                if (doPostRemovalFoldersPull) {
                    repositoryProcessor.pullIntoNewRepository(currentRepositoryName, nextRepositoryName())
                }

                log.info("\n***************\ndoPostRemoveFoldersBigToSmallReport=${doPostRemoveFoldersBigToSmallReport}\n")
                if (doPostRemoveFoldersBigToSmallReport) {
                    File bigToSmallReportFile = repositoryProcessor.bigToSmallReport(currentRepositoryName)
                    log.info(bigToSmallReportFile.text)
                }
            } else {
                log.info("\ndoRemoveFolders=${doRemoveFolders} but no folders listed, so skipping\n")
            }
        }

        File patchesFolder = (patchesFolderPath == null || patchesFolderPath.isEmpty()) ? null : new File(patchesFolderPath)
        log.info("\n***************\ndoCreatePatches=${doCreatePatches}\n")
        if (doCreatePatches) {
            repositoryProcessor.patchesFolder = patchesFolder
            patchesFolder = repositoryProcessor.createPatches(currentRepositoryName, projectNameKey)
        } else {
            patchesFolder = new File(repositoryProcessor.generatePatchesFolderPath(currentRepositoryName, projectNameKey))
        }

        log.info("\n***************\ndoApplyPatches=${doApplyPatches}\n")
        if (doApplyPatches) {
            repositoryProcessor.applyPatches(patchTargetRepositoryPath, patchTargetRepositoryBranch, patchesFolder,
                    1, true)
        }

        log.info("\n***************\ndoFinalRepositorySize=${doFinalRepositorySize}\n")
        if (doFinalRepositorySize) {
            log.info("")
            log.info("\n***************\nFinal folder size\n")
            repositoryProcessor.checkFolderSize(currentRepositoryName)
        }
    }

    void deleteIntermediateRepositories(int startingIndex = 0, boolean includeCurrentRepository = false) {
        log.info("\n***************\ndoDeleteIntermediateRepositories=${doDeleteIntermediateRepositories}\n")
        if (doDeleteIntermediateRepositories) {
            boolean deletingRepositories = true
            int sequenceIndex = startingIndex
            while (deletingRepositories) {
                String repositoryName = repositoryBaseName + '-' + sequenceIndex
                boolean doDelete = true
                if (repositoryName == currentRepositoryName) {
                    deletingRepositories = false
                    doDelete = includeCurrentRepository
                }
                if (doDelete) {
                    log.info("\n***************\ndeleting repository=${repositoryName}\n")
                    boolean success = repositoryProcessor.deleteRepository(repositoryName)
                    if (!success) {
                        log.warn("Failure to delete repositoryName=${repositoryName}, skipping further deletions.")
                        deletingRepositories = false
                    }
                }
                sequenceIndex++
            }
        }
    }
}
