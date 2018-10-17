package nz.govt.natlib.m11n.tools.automation.file

import groovy.transform.Canonical

/**
 * Useful for caching filenames across a closure. This is for the EqaBuildTool#cachedMatchedInConfigurations.
 */
@Canonical
class FilenamesCache {
    Collection<String> filenames = null

    boolean isCached() {
        return filenames != null
    }
}
