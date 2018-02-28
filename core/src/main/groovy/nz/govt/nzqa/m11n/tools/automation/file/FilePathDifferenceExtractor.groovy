package nz.govt.nzqa.m11n.tools.automation.file

import java.nio.file.Path
import java.nio.file.Paths

/**
 * Finds the difference between two filenames.
 */
class FilePathDifferenceExtractor {

    /**
     * Finds the difference between two file paths. If there is nothing in common then the result is null.
     * The subpathFile must be a subpath of the main file or the result is null.
     * If the mainFile and the subpathFile are exactly the same the result is an empty string.
     * If either the mainFile or the subpathFile are null the result is null.
     *
     * @param mainFile
     * @param subpathFile
     * @return
     */
    static String subpathDifference(File mainFile, File subpathFile) {
        String difference = ""
        List<String> unmatchedSubpath = [ ]
        if (mainFile) {
            if (subpathFile) {
                Path mainPath = Paths.get(mainFile.getCanonicalPath())
                Path subpathPath = Paths.get(subpathFile.getCanonicalPath())
                boolean matched = true
                Iterator<Path> mainPathIterator = mainPath.iterator()
                Iterator<Path> subpathIterator = subpathPath.iterator()
                while (matched && mainPathIterator.hasNext() && subpathIterator.hasNext()) {
                    Path pathOneSubpath = mainPathIterator.next()
                    Path pathTwoSubpath = subpathIterator.next()
                    matched = pathOneSubpath == pathTwoSubpath
                }
                if (matched) {
                    if (mainPathIterator.hasNext()) {
                        // we have diverged, difference is null
                        return null
                    } else if (subpathIterator.hasNext()) {
                        // mainPathIterator is exhausted, so the remainder is subpathPath
                        while (subpathIterator.hasNext()) {
                            unmatchedSubpath.add(subpathIterator.next().toString())
                            if (subpathIterator.hasNext()) {
                                unmatchedSubpath.add(File.separator)
                            }
                        }
                    } else {
                        // both paths are exhausted and thus are the same
                        return ""
                    }
                } else {
                    // matched == false, but we have diverged
                    return null
                }
            } else {
                // main is non-null, but subpath is null
                return null
            }
        } else if (subpathFile) {
            // mainFile is null
            return null
        }
        unmatchedSubpath.each { String pathPart ->
            difference += pathPart
        }
        // We want the file separator to always be forward slashes, since they are interpreted correctly across all
        // operating systems
        return difference.replace('\\', '/')
    }
}
