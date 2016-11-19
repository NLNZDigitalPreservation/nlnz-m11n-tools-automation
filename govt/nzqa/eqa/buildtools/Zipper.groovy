package nz.govt.nzqa.eqa.buildtools

import java.util.zip.ZipOutputStream
import java.util.zip.ZipEntry
import java.nio.file.Files

/**
 * Creates a zip file.
 */
class Zipper {

    def zipFolder = { folderPath, targetFilePath ->
        File targetFile = new File(targetFilePath)
        targetFile.parentFile.mkdirs()
        ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(targetFilePath))
        new File(folderPath).eachFile() { file ->
            if (!file.isFile()) {
                return
            }
            zipOutputStream.putNextEntry(new ZipEntry(file.getName()))
            InputStream fileInputStream = new FileInputStream(file)

            // stream the file data to the ZIP
            Files.copy(fileInputStream, zipOutputStream)
            fileInputStream.close()
            zipOutputStream.closeEntry()
        }
        zipOutputStream.close()
    }
}
