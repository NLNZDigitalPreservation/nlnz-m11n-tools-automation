package nz.govt.natlib.m11n.tools.automation.file

import java.nio.file.Path
import java.nio.file.Paths
import java.util.zip.ZipOutputStream
import java.util.zip.ZipEntry
import java.nio.file.Files

/**
 * Creates a zip file.
 */
class Zipper {

    def zipFolder = { folderPath, targetFile = null ->
        return zipFiles( [ folderPath ], targetFile)
    }

    // Create a zip archive with a single file
    def zipFile = { filePath, targetFile = null ->
        def filesPath = [ filePath ]
        zipFiles(filesPath, targetFile)
    }

    // Create a zip archive with a collection of files
    // Note that it doesn't recurse...
    // and if the targetFile is NOT specified it is deleted on JVM exit
    def zipFiles = { filesPaths, targetFile = null ->
        File theTargetFile = null
        if (targetFile != null) {
            theTargetFile = targetFile
        } else {
            theTargetFile = File.createTempFile("zipper-temp-zip", ".zip")
            theTargetFile.deleteOnExit()
        }

        ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(theTargetFile))
        filesPaths.each { candidateFile ->
            File file = getFile(candidateFile)
            if (file == null) {
                return
            }
            if (file.isDirectory()) {
                file.eachFile { afile ->
                    zipEntry(afile, zipOutputStream)
                }
            } else {
                zipEntry(file, zipOutputStream)
            }
        }
        zipOutputStream.close()

        return theTargetFile
    }

    def zipEntry = { file, zipOutputStream ->
        zipOutputStream.putNextEntry(new ZipEntry(file.getName()))
        InputStream fileInputStream = new FileInputStream(file)

        // stream the file data to the ZIP
        Files.copy(fileInputStream, zipOutputStream)
        fileInputStream.close()
        zipOutputStream.closeEntry()
    }

    def getFile = { fileOrPathOrAbsoluteFilePath ->
        if (fileOrPathOrAbsoluteFilePath == null) {
            return null
        }
        if (fileOrPathOrAbsoluteFilePath instanceof File) {
            return fileOrPathOrAbsoluteFilePath
        } else if (fileOrPathOrAbsoluteFilePath instanceof Path) {
            return fileOrPathOrAbsoluteFilePath.toFile()
        } else if (fileOrPathOrAbsoluteFilePath instanceof String || fileOrPathOrAbsoluteFilePath instanceof GString) {
            return Paths.get(fileOrPathOrAbsoluteFilePath).toFile()
        } else {
            println("Zipper Unable to process: [${fileOrPathOrAbsoluteFilePath}] is [${fileOrPathOrAbsoluteFilePath.getClass()}]")
        }
        return null
    }
}
