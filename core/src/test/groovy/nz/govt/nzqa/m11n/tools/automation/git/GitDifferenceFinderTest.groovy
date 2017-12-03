package nz.govt.nzqa.m11n.tools.automation.git

import org.junit.Before
import org.junit.Test

import static org.junit.Assert.assertTrue
import static org.junit.Assert.assertFalse

/**
 * Tests the {@link GitDifferenceFinder}.
 */
class GitDifferenceFinderTest {
    static String GIT_OUTPUT_WITH_DIFFERENCES = """build.gradle
src/main/java/nz/govt/nzqa/xmlRepository/common/AddOne.java
src/main/java/nz/govt/nzqa/xmlRepository/common/AddOneCommitted.java
src/main/java/nz/govt/nzqa/xmlRepository/common/BatchUpdateSPS.java
src/main/java/nz/govt/nzqa/xmlRepository/common/XmlHelper.java
"""

    static String GIT_OUTPUT_NO_DIFFERENCES = """
"""

    GitDifferenceFinder underTest

    @Before
    void setup() {
        underTest = new GitDifferenceFinder()
    }

    @Test
    void ableToDetermineDifferences() {
        assertTrue("Nonempty result is true", underTest.nonEmptyResult(GIT_OUTPUT_WITH_DIFFERENCES))
    }

    @Test
    void ableToDetermineNoDifferences() {
        assertFalse("Empty result is false", underTest.nonEmptyResult(GIT_OUTPUT_NO_DIFFERENCES))
    }

}
