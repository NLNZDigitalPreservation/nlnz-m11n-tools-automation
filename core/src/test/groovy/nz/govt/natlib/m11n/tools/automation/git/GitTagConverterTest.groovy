package nz.govt.natlib.m11n.tools.automation.git

import org.junit.Test

import static org.hamcrest.core.Is.is
import static org.junit.Assert.assertThat

/**
 * Tests the {@link GitTagConverter}.
 */
class GitTagConverterTest {

    @Test
    void tagToDependencyRoundTripCorrect() {
        String testTag = "nz.govt.natlib.m11n.tools__tools-version-artifact-id__12.34.56"
        String tagToDependency = GitTagConverter.convertTagToDependencyStringNotation(testTag)
        assertThat("tag correctly converted to dependency", tagToDependency, is("nz.govt.natlib.m11n.tools:tools-version-artifact-id:12.34.56"))
        String dependencyToTag = GitTagConverter.convertDependencyStringNotationToTag(tagToDependency)
        assertThat("dependency correctly converted to tag", dependencyToTag, is(testTag))
    }

    @Test
    void dependencyToTagRoundTripCorrect() {
        String testDependency = "nz.govt.natlib.m11n.tools:tools-version-artifact-id:12.34.56"
        String dependencyToTag = GitTagConverter.convertDependencyStringNotationToTag(testDependency)
        assertThat("dependency correctly converted to tag", dependencyToTag, is("nz.govt.natlib.m11n.tools__tools-version-artifact-id__12.34.56"))
        String tagToDependency = GitTagConverter.convertTagToDependencyStringNotation(dependencyToTag)
        assertThat("tag correctly converted to dependency", tagToDependency, is("nz.govt.natlib.m11n.tools:tools-version-artifact-id:12.34.56"))
    }

}
