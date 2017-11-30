package nz.govt.nzqa.m11n.tools.automation.maven.repository

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
    Boolean doCreatePatches = false
    Boolean doBigToSmallReport = false
    Boolean doOpenLogFileAtEnd = false

    String[] preserveBranchNames = [ ]
    String workParentFolderPath = '/tmp'
    String tempFolder = '/tmp'

    String repositoryBaseName = ''
    Integer sequenceIndex = 0
    String currentRepositoryName
    String previousRepositoryName

    String workflowName
    String subdirectoryFilterPath
    String removalFolders

    /**
     * Note that the 'currentRepositoryName' will be "${repositoryBaseName}-0"
     * @return
     */
    def setup() {
        String logFilePathStart = workParentFolderPath + File.separator + "logs"
        log.info("Starting workflow ${workflowName}, logging to ${logFilePathStart}-[current-date-time].log")

        repositoryProcessor = new RepositoryProcessor()
        repositoryProcessor.logger = logger
        repositoryProcessor.preserveBranchNames = preserveBranchNames
        repositoryProcessor.workParentFolderPath = workParentFolderPath
        repositoryProcessor.tempFolderPath = tempFolder
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
            repositoryProcessor.bigToSmallReport(currentRepositoryName, true)
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
                    repositoryProcessor.bigToSmallReport(currentRepositoryName, true)
                }
            } else {
                log.info("\ndoRemoveFolders=${doRemoveFolders} but no folders listed, so skipping\n")
            }
        }

        log.info("\n***************\ndoCreatePatches=${doCreatePatches}\n")
        if (doCreatePatches) {
            repositoryProcessor.createPatches(currentRepositoryName)
        }

        if (doOpenLogFileAtEnd) {
            repositoryProcessor.shellCommand.executeOnShellWithWorkingDirectory("subl ${logger.logFilePath}", workParentFolderPath)
        }
    }

}