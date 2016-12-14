package nz.govt.nzqa.eqa.buildtools

import java.util.regex.Matcher

/**
 * Uploads artifacts to a nexus repository.
 *
 * TODO: Pre-check to see if the artifact already exists before trying to upload
 */
class ArtifactUploader {
    // Outputs the gradle dependency to the console so that it can be used in a gradle dependency
    // To just output the dependency information set this variable to true and doUploadToNexus to false
    Boolean outputGradleDependency = true

    // Upload the artifact to nexus
    Boolean doUploadToNexus = true

    // Must be set the nexus repository location
    String repositoryId
    String repositoryUrl

    ShellCommand shellCommand
    Logger logger

    String workingDirectory = '/tmp'

    // Finds the filename without the extension, useful to convert a jar file name to an artifact id
    def getFilenameWithoutExtension = { filenameWithPath ->
        filenameWithPath.lastIndexOf('.').with { it != -1 ? filenameWithPath[0..<it] : filenameWithPath}
    }

    def showGradleDependency = { groupId, artifactId, version, file, classifier = null  ->
        String fileName = file.getName()
        if (outputGradleDependency && logger != null) {
            def compileGroup = "    compile group: '${groupId}', name: '${artifactId}', version: '${version}'"
            if (classifier != null) {
                compileGroup += ", classifier: '${classifier}'"
            }
            if (fileName.endsWith(".zip")) {
                compileGroup += ", ext: 'zip'"
            } else if (fileName.endsWith(".exe")) {
                compileGroup += ", ext: 'exe'"
            }
            logger.logToFile(compileGroup)
        }
    }

    // Uploads the artifact to the given nexus repository
    def uploadToNexus = { groupId, artifactId, version, file, classifier = null ->
        String jarName = file.getName()
        String packaging = "jar"
        if (jarName.endsWith(".zip")) {
            packaging = "zip"
        } else if (jarName.endsWith(".exe")) {
            packaging = "exe"
        }
        def classifierArgument = ''
        if (classifier != null) {
            classifierArgument = " -Dclassifier=${classifier}"
        }
        def uploadNexusCommand = "mvn deploy:deploy-file -DgroupId=${groupId} -DartifactId=${artifactId} -Dversion=${version} \
-DgeneratePom=true -Dpackaging=${packaging} \
-DrepositoryId=${repositoryId} -Durl=${repositoryUrl} -Dfile=${file.getAbsolutePath()} \
${classifierArgument}"
        shellCommand.executeOnShellWithWorkingDirectory(uploadNexusCommand, workingDirectory)
        def uploadProcessExitValue = shellCommand.exitValue
        //uploadProcess.text.eachLine { println theLine }
        if (!uploadProcessExitValue) {
            println("Upload of artifact ${jarName} failed")
            println("*****")
            println("*************************************************************")
        }
        showGradleDependency(groupId, artifactId, version, file, classifier)
    }

    def uploadFileWithClassifier = { groupId, artifactId, version, classifier, file ->
        String jarName = file.getName()
        if (doUploadToNexus) {
            if (jarName ==~ /.*\.(jar|zip|exe)$/) {
                //println "artifact: ${artifactName}, jar: ${jarName}: ${file.getAbsolutePath()}"
                uploadToNexus(groupId, artifactId, version, file, classifier)
            } else {
                logger.logToFile("${jarName} NOT processed")
            }
        } else {
            showGradleDependency(groupId, artifactId, version, file, classifier)
        }
    }
    // Uploads a file (jar) to the given nexus repository
    // If the artifact name is not given then the jar file name is used as the artifact id
    def uploadFile = { groupId, version, file, possibleArtifactId = null ->
        String artifactId = possibleArtifactId
        if (artifactId == null) {
            artifactId = getFilenameWithoutExtension(file.name)
        }
        uploadFileWithClassifier(groupId, artifactId, version, null, file)
    }

    // Uploads a file (jar) to the given nexus repository
    // and uses the filename itself for the groupId, artifactId and version
    // the filename will have the form [groupId]-[artifactId]-[version] where [version] is [0-9]+.*
    def uploadFileWithGroupIdArtifactIdVersionInFilename = { file ->
        String filename = file.name
        Matcher pathMatcher = file.name =~ /(.*?)-(.*?)-([0-9]+\..*?)\.jar/
        def groupId = pathMatcher.find() ? pathMatcher.group(1) : null
        def artifactId = groupId != null ? pathMatcher.group(2) : null
        def version = groupId != null ? pathMatcher.group(3) : null
        logger.logToFile("filename: [${filename}], groupId: [${groupId}], artifactId: [${artifactId}], version: [${version}]")
        if (groupId != null && artifactId != null && version != null) {
            uploadFile(groupId, version, file, artifactId)
        } else {
            logger.logToFile("uploadFileWithGroupIdArtifactIdVersionInFilename: Unable to upload artifact: Not enough extractable attributes")
        }
    }

    // Bulk upload of all jars in a folder
    def uploadAllJarsInFolder = { groupId, version, folderPath ->
        File folder = new File("${folderPath}")
        folder.eachFile() { folderFile ->
            uploadFile(groupId, version, folderFile)
        }
    }

    // Bulk upload of all jars in a folder
    def uploadAllJarsInFolderDerivingAttributes = { folderPath ->
        File folder = new File("${folderPath}")
        folder.eachFile() { folderFile ->
            uploadFileWithGroupIdArtifactIdVersionInFilename(folderFile)
        }
    }
}