package groovy.nz.govt.nzqa.m11n.tools.automation.git

import nz.govt.nzqa.m11n.tools.automation.git.GitTagConverter
import org.junit.Test

import static org.hamcrest.core.Is.is
import static org.junit.Assert.assertThat

/**
 * Tests the {@link nz.govt.nzqa.m11n.tools.automation.git.GitTagConverter}.
 */
class GitTagConverterTest {

    @Test
    void tagToDependencyRoundTripCorrect() {
        String testTag = "nz.govt.nzqa.eqa.common__eqa-common-xml-api__33.12.1"
        String tagToDependency = GitTagConverter.convertTagToDependencyStringNotation(testTag)
        assertThat("tag correctly converted to dependency", tagToDependency, is("nz.govt.nzqa.eqa.common:eqa-common-xml-api:33.12.1"))
        String dependencyToTag = GitTagConverter.convertDependencyStringNotationToTag(tagToDependency)
        assertThat("dependency correctly converted to tag", dependencyToTag, is(testTag))
    }

    @Test
    void dependencyToTagRoundTripCorrect() {
        String testDependency = "nz.govt.nzqa.eqa.common:eqa-common-xml-api:33.12.1"
        String dependencyToTag = GitTagConverter.convertDependencyStringNotationToTag(testDependency)
        assertThat("dependency correctly converted to tag", dependencyToTag, is("nz.govt.nzqa.eqa.common__eqa-common-xml-api__33.12.1"))
        String tagToDependency = GitTagConverter.convertTagToDependencyStringNotation(dependencyToTag)
        assertThat("tag correctly converted to dependency", tagToDependency, is("nz.govt.nzqa.eqa.common:eqa-common-xml-api:33.12.1"))
    }

}
