package nz.govt.nzqa.m11n.tools.automation.file

import org.junit.Test

import static org.hamcrest.core.Is.is
import static org.junit.Assert.assertNull
import static org.junit.Assert.assertThat

/**
 * Tests {@link nz.govt.nzqa.eqa.tools.build.automation.file.FilenameMatch}.
 */
public class FilenameMatchTest {
    private static List<String> LONG_LIST = ['eqa-common-csa-33.10.0.jar', 'eqa-apps-configurator-client-33.10.5.jar',
                                             'eqa-apps-contacts-eci-33.10.2.jar', 'ueSolver-facade-1.1.17.jar',
                                             'ueSolver-json-domain-1.1.17.jar', 'castor-1.0.5.jar', 'castor-xml-1.0.5.jar',
                                             'guava-15.0.jar', 'joda-time-2.2.jar', 'jackson-core-2.4.1.jar',
                                             'jackson-annotations-2.4.0.jar', 'jackson-databind-2.4.1.jar',
                                             'jackson-datatype-joda-2.2.3.jar', 'oscache-2.4.1.jar', 'oscore-2.2.7.jar',
                                             'log4j-1.2.16.jar', 'slf4j-log4j12-1.5.11.jar', 'servlet-api-5.2.0.EAP.jar',
                                             'mail-5.2.0.EAP.jar', 'jboss-javaee-javax-annotation-removed-5.2.0.EAP.jar',
                                             'ibatis2-common-2.1.7.597.jar', 'ibatis2-dao-2.1.7.597.jar', 'commons-lang-2.5.jar',
                                             'commons-pool-1.5.5.jar', 'tika-core-1.7.jar', 'tika-parsers-1.7.jar',
                                             'struts-1.2.9.jar', 'json-simple-1.1.1.jar', 'httpclient-4.5.1.jar',
                                             'xercesImpl-2.10.0.jar', 'eqa-common-reporting-service-33.9.71.jar',
                                             'eqa-common-security2-33.10.0.jar', 'eqa-apps-contacts-admin-33.10.2.jar',
                                             'vorbis-java-tika-0.6.jar', 'netcdf-4.2.20.jar', 'jmatio-1.0.jar',
                                             'apache-mime4j-core-0.7.2.jar', 'apache-mime4j-dom-0.7.2.jar',
                                             'commons-compress-1.8.1.jar', 'xz-1.5.jar', 'commons-codec-1.9.jar',
                                             'pdfbox-1.8.8.jar', 'bcmail-jdk15-1.45.jar', 'bcprov-jdk15-1.45.jar',
                                             'poi-3.11.jar', 'poi-scratchpad-3.11.jar', 'poi-ooxml-3.11.jar', 'tagsoup-1.2.1.jar',
                                             'asm-debug-all-4.1.jar', 'isoparser-1.0.2.jar', 'metadata-extractor-2.6.2.jar',
                                             'boilerpipe-1.1.0.jar', 'rome-1.0.jar', 'vorbis-java-core-0.6.jar',
                                             'juniversalchardet-1.0.3.jar', 'jhighlight-1.0.jar', 'java-libpst-0.8.1.jar',
                                             'commons-beanutils-1.7.0.jar', 'commons-digester-1.6.jar',
                                             'commons-fileupload-1.0.jar', 'commons-validator-1.1.4.jar', 'oro-2.0.7.jar',
                                             'antlr-2.7.2.jar', 'xalan-2.5.1.jar', 'junit-4.10.jar', 'httpcore-4.4.3.jar',
                                             'xml-apis-1.4.01.jar', 'unidataCommon-4.2.20.jar', 'commons-httpclient-3.1.jar',
                                             'fontbox-1.8.8.jar', 'jempbox-1.8.8.jar', 'poi-ooxml-schemas-3.11.jar',
                                             'aspectjrt-1.8.0.jar', 'xmpcore-5.1.2.jar', 'jdom-1.0.jar', 'commons-collections-2.1.jar',
                                             'hamcrest-core-1.1.jar', 'jcip-annotations-1.0.jar', 'xmlbeans-2.6.0.jar',
                                             'spring-web-4.1.6.RELEASE.jar', 'spring-aop-4.1.6.RELEASE.jar', 'spring-beans-4.1.6.RELEASE.jar',
                                             'spring-context-4.1.6.RELEASE.jar', 'aopalliance-1.0.jar', 'spring-expression-4.1.6.RELEASE.jar',
                                             'commons-dbcp-1.4.jar', 'jboss-system-jmx-5.2.0.EAP.jar', 'jboss-kernel-5.2.0.EAP.jar',
                                             'jsp-api-5.2.0.EAP.jar', 'jboss-common-jdbc-wrapper-5.2.0.EAP.jar', 'jboss-javaee-5.2.0.EAP.jar',
                                             'jboss-j2se-5.2.0.EAP.jar', 'jboss-logging-spi-5.2.0.EAP.jar', 'jboss-system-client-5.2.0.EAP.jar',
                                             'jboss-system-jmx-client-5.2.0.EAP.jar', 'jconn3-6.0.26312.jar', 'commons-logging-1.2.jar',
                                             'slf4j-api-1.6.1.jar', 'spring-core-4.1.6.RELEASE.jar']
    private static List<String> ALMOST_SAME_NAME = ['xml-apis-1.4.01.jar', 'castor-1.0.5', 'junit-4.10.jar', 'castor-xml-1.0.5']
    private static List<String> ALMOST_SAME_NAME2 = ['castor+-1.0.5', 'castor-1.0.5', 'castor-xml-1.0.5']
    private static List<String> SNAPSHOT_VERSION = ['eqa-common-eqa-33.10.6','eqa-common-eqa-33.10.6-20161211.195917-5', 'castor-1.0.5']
    private static List<String> MULTIPLE_SNAPSHOT_VERSIONS = [ 'eqa-common-eqa-33.10.6', 'eqa-common-eqa-33.10.6-20161211.195917-5',
                                                               'eqa-common-eqa-33.10.6-20161211.195917-5', 'castor-1.0.5',
                                                               'eqa-common-eqa-33.10.6-20170113.195917-5', 'commons-dbcp-1.4.jar',
                                                               'eqa-common-eqa-33.10.6-20161222.195917-5', 'aopalliance-1.0.jar']
    private static List<String> DIFFERENT_NAMES_SAME_VERSION = ['spring-web-4.1.6.RELEASE.jar', 'spring-aop-4.1.6.RELEASE.jar',
                                                                'spring-beans-4.1.6.RELEASE.jar']
    private static List<String> SAME_NAME_DIFFERENT_VERSIONS = ['spring-web-4.1.6.RELEASE.jar', 'aopalliance-1.0.jar',
                                                                'spring-aop-4.1.0.RELEASE.jar', 'unidataCommon-4.2.20.jar',
                                                                'spring-aop-4.1.6.RELEASE.jar', 'jempbox-1.8.8.jar',
                                                                'spring-aop-3.0.2.RELEASE.jar', 'xmlbeans-2.6.0.jar',
                                                                'spring-aop-3.2.7.RELEASE.jar', 'xalan-2.5.1.jar',
                                                                'spring-beans-4.1.6.RELEASE.jar', 'castor-1.0.5']

    FilenameMatch expected

    @Test
    public void noMatchIsNotMatched() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(DIFFERENT_NAMES_SAME_VERSION, "castor", "1.0.5")

        assertNull(bestMatch)
    }

    @Test
    public void emptyListIsNotMatched() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch([], "castor", "1.0.5")

        assertNull(bestMatch)
    }

    @Test
    public void almostSameNameMatches() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(ALMOST_SAME_NAME, "castor", "1.0.5")

        expected = new FilenameMatch(filename: 'castor-1.0.5', fullMatch: true, nameMatch: true, versionMatch: true,
                snapshot: false)

        assertThat(bestMatch, is(expected))
    }


    @Test
    public void almostSameNameMatches2() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(ALMOST_SAME_NAME2, "castor", "1.0.5")

        expected = new FilenameMatch(filename: 'castor-1.0.5', fullMatch: true, nameMatch: true, versionMatch: true,
                snapshot: false)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void snapshotVersionMatches() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(SNAPSHOT_VERSION, "eqa-common-eqa", "33.10.6-SNAPSHOT")

        expected = new FilenameMatch(filename: 'eqa-common-eqa-33.10.6-20161211.195917-5', fullMatch: true,
                nameMatch: true, versionMatch: true, snapshot: true)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void latestSnapshotVersionWillMatchWhenFullMatchRequired() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(MULTIPLE_SNAPSHOT_VERSIONS, "eqa-common-eqa", "SNAPSHOT",
                                                          true)

        expected = new FilenameMatch(filename: 'eqa-common-eqa-33.10.6-20170113.195917-5', fullMatch: true,
                nameMatch: true, versionMatch: true, snapshot: true)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void latestSnapshotVersionMatchesWhenNotFullMatchRequired() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(MULTIPLE_SNAPSHOT_VERSIONS, "eqa-common-eqa", "SNAPSHOT",
                                                          false)

        expected = new FilenameMatch(filename: 'eqa-common-eqa-33.10.6-20170113.195917-5', fullMatch: true,
                nameMatch: true, versionMatch: true, snapshot: true)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void differentNamesSameVersionMatches() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(DIFFERENT_NAMES_SAME_VERSION, "spring-aop", "4.1.6.RELEASE.jar")

        expected = new FilenameMatch(filename: 'spring-aop-4.1.6.RELEASE.jar', fullMatch: true, nameMatch: true,
                versionMatch: true, snapshot: false)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void sameNameDifferentVersionAndMatchingVersionMatches() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(DIFFERENT_NAMES_SAME_VERSION, "spring-aop", "4.1.6.RELEASE.jar")

        expected = new FilenameMatch(filename: 'spring-aop-4.1.6.RELEASE.jar', fullMatch: true, nameMatch: true,
                versionMatch: true, snapshot: false)

        assertThat(bestMatch, is(expected))
    }

    @Test
    public void sameNameDifferentVersionButNotMatchingVersionMatchesLatestVersionIfNotFullMatchRequired() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(DIFFERENT_NAMES_SAME_VERSION, "spring-aop", "4.1.4.RELEASE.jar",
                                                          false)

        expected = new FilenameMatch(filename: 'spring-aop-4.1.6.RELEASE.jar', fullMatch: false, nameMatch: true,
                versionMatch: false, snapshot: false)

        assertThat(bestMatch, is(expected))
    }


    @Test
    public void sameNameDifferentVersionButNotMatchingVersionDoesNotMatchMatchesLatestVersionWhenFullMatchRequired() {
        FilenameMatch bestMatch = FilenameMatch.bestMatch(DIFFERENT_NAMES_SAME_VERSION, "spring-aop", "4.1.4.RELEASE.jar")

        assertNull(bestMatch)
    }

}