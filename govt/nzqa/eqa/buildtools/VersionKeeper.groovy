package nz.govt.nzqa.eqa.buildtools

import java.util.regex.Matcher

/**
 * Tracks different versions. This class is useful because in the interim between the full eqa repository in use
 * and the repository split into sub-repositories, there will be code migrations, so this is one mechanism
 * to more easily keep the artifacts in sync.
 */
class VersionKeeper {
    def versionMap = [:]

    def parseVersionBlock = { textBlock, logger = null ->
        textBlock.eachLine { line, count ->
            def (key, version) = isXmlProperty(line) ? extractXmlProperty(line) : extractSimpleProperty(line)
            if (key != null) {
                versionMap.put(key, version)
            }
            if (logger) {
                logger.logToFile("key: [${key}], value: [${version}], versionForKey: [${this.versionForKey(key)}]")
            }
        }
    }

    def isXmlProperty = { line ->
        return line.toLowerCase().contains('<property name=')
    }

    def extractSimpleProperty = { line ->
        def (key, version) = line.tokenize('=')
        key = key.trim()
        version = version.trim()
        return [ key, version ]
    }

    // Of the form '  <property name="edorg.version" value="33_9_77"/>'
    def extractXmlProperty = { line ->
        Matcher nameMatcher = line =~ /.*?<property name="(.*?)".*?/
        def key = nameMatcher.find() ? nameMatcher.group(1) : null
        Matcher versionMatcher = line =~ /.*?value="(.*?)".*?/
        def version = versionMatcher.find() ? versionMatcher.group(1) : null
        return [ key, version ]
    }

    def rawVersionForKey = { key ->
        return versionMap.get(key)
    }

    def versionForKey = { key ->
        convertRawVersion(rawVersionForKey(key))
    }

    def convertRawVersion = { rawVersion ->
        def version = ''
        if (rawVersion != null) {
            version = rawVersion.replace('_', '.')
        }
        version
    }
}
