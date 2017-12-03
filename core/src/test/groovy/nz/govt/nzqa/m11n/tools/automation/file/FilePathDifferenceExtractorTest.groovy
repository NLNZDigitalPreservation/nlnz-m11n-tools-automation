package nz.govt.nzqa.m11n.tools.automation.file

import org.junit.Test

import static org.hamcrest.core.Is.is
import static org.junit.Assert.assertNull
import static org.junit.Assert.assertThat

/**
 * Tests {@link nz.govt.nzqa.eqa.tools.build.automation.file.FilenameMatch}.
 */
class FilePathDifferenceExtractorTest {

    @Test
    void sameFileIsEmptyStringDifference() {
        String path = "/a/path/to/something"
        File file1 = new File(path)
        File file2 = new File(path)

        assertThat("Same file is empty difference", FilePathDifferenceExtractor.subpathDifference(file1, file2), is(""))
        assertThat("Same file is empty difference", FilePathDifferenceExtractor.subpathDifference(file2, file1), is(""))
    }

    @Test
    void sameEmptyFileIsEmptyStringDifference() {
        String path = ""
        File file1 = new File(path)
        File file2 = new File(path)

        assertThat("Same file is empty difference", FilePathDifferenceExtractor.subpathDifference(file1, file2), is(""))
        assertThat("Same file is empty difference", FilePathDifferenceExtractor.subpathDifference(file2, file1), is(""))
    }

    @Test
    void oneNullFileIsNullDifference() {
        String path = "/a/path/to/something"
        File file1 = null
        File file2 = new File(path)

        assertNull("One null file is full difference", FilePathDifferenceExtractor.subpathDifference(file1, file2))
        assertNull("One null file is full difference", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void nothingInCommonIsNullDifference() {
        String path1 = "/a/path/to/something"
        String path2 = "/b/path/to/something"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertNull("Nothing in common is null difference", FilePathDifferenceExtractor.subpathDifference(file1, file2))
        assertNull("Nothing in common is null difference", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void pathsDivergeIsNullDifference() {
        String path1 = "/a/path/a/to/something"
        String path2 = "/b/path/b/to/something"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertNull("Paths diverge is null difference", FilePathDifferenceExtractor.subpathDifference(file1, file2))
        assertNull("Paths diverge common is null difference", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void pathTest() {
        String path1 = "/a/path/to/something"
        String path2 = "/b/path/to/something"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertNull("Nothing in common is null difference", FilePathDifferenceExtractor.subpathDifference(file1, file2))
        assertNull("Nothing in common is null difference", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void subpathDifferenceAccurateDifference() {
        String path1 = "/a/path/to/something"
        String path2 = "/a/path/to/something/more/than/that"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertThat("Subpath difference from [${path1}] to [${path2}] done correctly", FilePathDifferenceExtractor.subpathDifference(file1, file2),
                is("more/than/that"))
        assertNull("Subpath cannot be more than main file", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void subpathDifferenceFromRootAccurateDifference() {
        String path1 = "/"
        String path2 = "/a/path/to/something/more/than/that"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertThat("Subpath difference from [${path1}] to [${path2}] done correctly", FilePathDifferenceExtractor.subpathDifference(file1, file2),
                is("a/path/to/something/more/than/that"))
        assertNull("Subpath cannot be more than main file", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

    @Test
    void subpathDifferenceFromBlankIsNull() {
        String path1 = ""
        String path2 = "/a/path/to/something/more/than/that"
        File file1 = new File(path1)
        File file2 = new File(path2)

        assertNull("Subpath difference from [${path1}] to [${path2}] is null", FilePathDifferenceExtractor.subpathDifference(file1, file2))
        assertNull("Subpath cannot be more than main file", FilePathDifferenceExtractor.subpathDifference(file2, file1))
    }

}