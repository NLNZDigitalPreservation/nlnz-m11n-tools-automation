package nz.govt.natlib.m11n.tools.automation.maven.repository

import groovy.util.logging.Slf4j

import java.util.regex.Matcher
import java.util.zip.ZipEntry
import java.util.zip.ZipFile

/**
 * Uploads artifacts to a nexus repository.
 *
 * TODO: Pre-check to see if the artifact already exists before trying to upload
 */
@Slf4j
class ArtifactUploader {
    // Outputs the gradle dependency to the console so that it can be used in a gradle dependency
    // To just output the dependency information set this variable to true and doUploadToNexus to false
    Boolean outputGradleDependency = true

    // Upload the artifact to nexus
    Boolean doUploadToNexus = true

    // Must be set the nexus repository location
    String repositoryId
    String repositoryUrl

    nz.govt.natlib.m11n.tools.automation.shell.ShellCommand shellCommand

    String workingDirectory = '/tmp'

    // Finds the filename without the extension, useful to convert a jar file name to an artifact id
    def getFilenameWithoutExtension = { filenameWithPath ->
        filenameWithPath.lastIndexOf('.').with { it != -1 ? filenameWithPath[0..<it] : filenameWithPath}
    }

    def showGradleDependency = { groupId, artifactId, version, File file, classifier = null, nz.govt.natlib.m11n.tools.automation.maven.PomContainer pomContainer = null  ->
        String fileName = file.getName()
        if (outputGradleDependency) {
            def compileGroup = "    compile group: '${groupId}', name: '${artifactId}', version: '${version}'"
            if (pomContainer != null && pomContainer.isExtracted()) {
                compileGroup =  "    compile group: '${pomContainer.groupId}', name: '${pomContainer.artifactId}', version: '${pomContainer.version}'"
            }
            if (classifier != null) {
                compileGroup += ", classifier: '${classifier}'"
            }
            if (fileName.endsWith(".zip")) {
                compileGroup += ", ext: 'zip'"
            } else if (fileName.endsWith(".exe")) {
                compileGroup += ", ext: 'exe'"
            }
            log.info(compileGroup)
            if (pomContainer != null && pomContainer.isExtracted()) {
                log.info("NOTE replacement by pomContainer: group: ${groupId}->${pomContainer.groupId}, " +
                        "name: ${artifactId}->${pomContainer.artifactId}, version: ${version}->${pomContainer.version}")
            }
        }
    }

    // Uploads the artifact to the given nexus repository
    def uploadToNexus = { groupId, artifactId, version, File file, classifier = null, boolean usePomIfAvailable = true ->
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
        String uploadNexusCommand
        nz.govt.natlib.m11n.tools.automation.maven.PomContainer pomContainer
        if (packaging == "jar" || packaging == "zip") {
            if (usePomIfAvailable) {
                pomContainer = extractEmbeddedPom(file)
                if (pomContainer != null && pomContainer.isExtracted()) {
                    // from http://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html
                    // maven 2.5+ mvn install:install-file -Dfile=<path-to-file>
                    log.info("file ${file.getAbsolutePath()} has embedded pom, extracting to [${pomContainer}]")
                    uploadNexusCommand = "mvn deploy:deploy-file -DpomFile=${pomContainer.extractedPom.getAbsolutePath()} " +
                                        "-DrepositoryId=${repositoryId} -Durl=${repositoryUrl} -Dfile=${file.getAbsolutePath()} " +
                                        "${classifierArgument}"
                }
            }
        }
        if (uploadNexusCommand == null) {
            uploadNexusCommand = "mvn deploy:deploy-file -DgroupId=${groupId} -DartifactId=${artifactId} -Dversion=${version} " +
                                    "-DgeneratePom=true -Dpackaging=${packaging} " +
                                    "-DrepositoryId=${repositoryId} -Durl=${repositoryUrl} -Dfile=${file.getAbsolutePath()} " +
                                    "${classifierArgument}"
        }

        if (uploadNexusCommand != null && !uploadNexusCommand.isEmpty()) {
            File workingDirectoryFile = new File(workingDirectory)
            shellCommand.executeOnShellWithWorkingDirectory(uploadNexusCommand, workingDirectoryFile)
            def uploadProcessExitValue = shellCommand.exitValue
            //uploadProcess.text.eachLine { println theLine }
            if (!uploadProcessExitValue) {
                log.info("Upload of artifact ${jarName} failed")
                log.info("*****")
                log.info("*************************************************************")
            }
            showGradleDependency(groupId, artifactId, version, file, classifier, pomContainer)
        } else {
            log.info("No valid upload to nexus command, skipping upload... (file: [${file}])")
        }
    }

    Closure<nz.govt.natlib.m11n.tools.automation.maven.PomContainer> extractEmbeddedPom = { File file ->
        boolean embeddedPomExists = false
        nz.govt.natlib.m11n.tools.automation.maven.PomContainer extractedPom
        ZipFile fileAsZip = new ZipFile(file)
        Collection<ZipEntry> embeddedPoms = fileAsZip.entries().findAll { ZipEntry entry -> !entry.directory }.findAll { ZipEntry entry ->
            boolean isPom = false
            if (entry.name ==~ /META-INF\/.*?\/pom.xml$/) {
                log.info("unzipped entries: [${entry}], name: [${entry.name}], directory: [${entry.directory}]")
                embeddedPomExists = true
                isPom = true
            }
            isPom
        }
        if (embeddedPomExists) {
            if (embeddedPoms.size() == 1) {
                String pomContents = fileAsZip.getInputStream(embeddedPoms.first()).text
                extractedPom = nz.govt.natlib.m11n.tools.automation.maven.PomContainer.fromPomContents(pomContents)
                log.info("Extracted from pomContents: [${extractedPom}]")

                if (extractedPom.isValid()) {
                    String pomFoldername = "${this.workingDirectory}/extracted-poms"
                    String pomFilename = "${extractedPom.groupId}-${extractedPom.artifactId}-${extractedPom.version}-pom.xml"
                    File extractedPomFolder = new File(pomFoldername)
                    extractedPomFolder.mkdirs()
                    File pomFile = new File("${pomFoldername}/${pomFilename}")
                    pomFile.write(pomContents)
                    extractedPom.extractedPom = pomFile
                } else {
                    log.info("${embeddedPoms.first()} does not contain a valid pom")
                }
            } else {
                log.info("More embedded poms than expected: [${embeddedPoms.size()}]: [${embeddedPoms}]")
            }
        }
        return extractedPom
    }

    def uploadFileWithClassifier = { groupId, artifactId, version, classifier, File file, boolean usePomIfAvailable = true ->
        String jarName = file.getName()
        if (doUploadToNexus) {
            if (jarName ==~ /.*\.(jar|zip|exe)$/) {
                //println "artifact: ${artifactName}, jar: ${jarName}: ${file.getAbsolutePath()}"
                uploadToNexus(groupId, artifactId, version, file, classifier, usePomIfAvailable)
            } else {
                log.info("${jarName} NOT processed")
            }
        } else {
            showGradleDependency(groupId, artifactId, version, file, classifier, usePomIfAvailable)
        }
    }

    // Uploads a file (jar) to the given nexus repository
    // If the artifact name is not given then the jar file name is used as the artifact id
    def uploadFile = { groupId, version, File file, possibleArtifactId = null, boolean usePomIfAvailable = true ->
        String artifactId = possibleArtifactId
        if (artifactId == null) {
            artifactId = getFilenameWithoutExtension(file.name)
        }
        uploadFileWithClassifier(groupId, artifactId, version, null, file, usePomIfAvailable)
    }

    // Uploads a file (jar) to the given nexus repository
    // and uses the filename itself for the groupId, artifactId and version
    // the filename will have the form [groupId]-[artifactId]-[version] where [version] is [0-9]+.*
    def uploadFileWithGroupIdArtifactIdVersionInFilename = { File file ->
        String filename = file.name
        Matcher pathMatcher = file.name =~ /(.*?)-(.*?)-([0-9]+\..*?)\.jar/
        def groupId = pathMatcher.find() ? pathMatcher.group(1) : null
        def artifactId = groupId != null ? pathMatcher.group(2) : null
        def version = groupId != null ? pathMatcher.group(3) : null
        log.info("filename: [${filename}], groupId: [${groupId}], artifactId: [${artifactId}], version: [${version}]")
        if (groupId != null && artifactId != null && version != null) {
            uploadFile(groupId, version, file, artifactId)
        } else {
            log.info("uploadFileWithGroupIdArtifactIdVersionInFilename: Unable to upload artifact: Not enough extractable attributes")
        }
    }

    // Bulk upload of all jars in a folder
    def uploadAllJarsInFolder = { groupId, version, folderPath, boolean usePomIfAvailable = true ->
        File folder = new File("${folderPath}")
        folder.eachFile() { folderFile ->
            uploadFile(groupId, version, folderFile, null, usePomIfAvailable)
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
