package nz.govt.nzqa.eqa.buildtools

/**
 * A conditional workflow for processing a repository.
 */
class RepositoryWorkflow {
    Logger logger
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
        logger = new Logger()
        String logFilePathStart = workParentFolderPath + File.separator + "logs"
        logger.generateLogFilePath(logFilePathStart, workflowName)
        logger.logToConsole = true
        logger.logToFile("Starting workflow ${workflowName}, logging to ${logFilePathStart}-[current-date-time].log")

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
        logger.logToFile("\n***************\nCurrent repository name is '${currentRepositoryName}'\n")
        sequenceIndex += 1
        return currentRepositoryName
    }

    def doWorkflow() {

        logger.logToFile("\n***************\ndoStartWithCopy=${doStartWithCopy}\n")
        if (doStartWithCopy) {
            repositoryProcessor.copyRepository(currentRepositoryName, nextRepositoryName())
        }

        logger.logToFile("\n***************\ndoSubdirectoryFilter=${doSubdirectoryFilter}\n")
        if (doSubdirectoryFilter) {
            repositoryProcessor.subdirectoryFilter(currentRepositoryName, subdirectoryFilterPath)
        }

        logger.logToFile("\n***************\ndoPullIntoNewRepository=${doPullIntoNewRepository}\n")
        if (doPullIntoNewRepository) {
            repositoryProcessor.pullIntoNewRepository(currentRepositoryName, nextRepositoryName())
        }

        logger.logToFile("\n***************\ndoCopyToWorkingRepository=${doCopyToWorkingRepository}\n")
        if (doCopyToWorkingRepository) {
            repositoryProcessor.copyRepository(currentRepositoryName, nextRepositoryName())
        }

        logger.logToFile("\n***************\ndoBigToSmallReport=${doBigToSmallReport}\n")
        if (doBigToSmallReport) {
            repositoryProcessor.bigToSmallReport(currentRepositoryName, true)
        }

        logger.logToFile("\n***************\ndoRemoveFolders=${doRemoveFolders}\n")
        if (doRemoveFolders) {
            if (removalFolders != null && !removalFolders.isEmpty() && !removalFolders.isAllWhitespace()) {
                repositoryProcessor.removeFolders(currentRepositoryName, removalFolders)

                // don't pull into a new repository if nothing changes
                logger.logToFile("\n***************\ndoPostRemovalFoldersPull=${doPostRemovalFoldersPull}\n")
                if (doPostRemovalFoldersPull) {
                    repositoryProcessor.pullIntoNewRepository(currentRepositoryName, nextRepositoryName())
                }

                logger.logToFile("\n***************\ndoPostRemoveFoldersBigToSmallReport=${doPostRemoveFoldersBigToSmallReport}\n")
                if (doPostRemoveFoldersBigToSmallReport) {
                    repositoryProcessor.bigToSmallReport(currentRepositoryName, true)
                }
            } else {
                logger.logToFile("\ndoRemoveFolders=${doRemoveFolders} but no folders listed, so skipping\n")
            }
        }

        logger.logToFile("\n***************\ndoCreatePatches=${doCreatePatches}\n")
        if (doCreatePatches) {
            repositoryProcessor.createPatches(currentRepositoryName)
        }

        if (doOpenLogFileAtEnd) {
            repositoryProcessor.shellCommand.executeOnShellWithWorkingDirectory("subl ${logger.logFilePath}", workParentFolderPath)
        }
    }

}