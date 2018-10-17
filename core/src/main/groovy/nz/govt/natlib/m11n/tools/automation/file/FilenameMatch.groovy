package nz.govt.natlib.m11n.tools.automation.file

import com.google.common.collect.Ordering
import groovy.transform.Canonical

@Canonical
class FilenameMatch implements Comparable<FilenameMatch> {
    def filename
    boolean fullMatch = false
    boolean nameMatch = false
    boolean versionMatch = false
    boolean snapshot = false

    static FilenameMatch match(def filename, def name, def version) {
        if (filename == null) {
            return null
        }
        FilenameMatch filenameMatch = new FilenameMatch(filename: filename)
        filenameMatch.doMatch(name, version)
        return filenameMatch
    }

    void doMatch(def name, def version) {
        this.nameMatch = filename ==~/.*?${name}-.*?/
        def versionToMatch = version
        // TODO Verify that -SNAPSHOT still works: Local maven uploads to ~/.m2/repository are supposed to be -SNAPSHOT
        // (a bug in the gradle 'maven' plugin was putting on timestamps, but those are just for nexus uploads)
        //
        // snapshot versions can be timestamped versions,
        // for example '33.9.RG1447-20161211.195917-5'
        // instead of '33.9.RG1447-SNAPSHOT'
        // so we match on the part of the version before the snapshot
        if (version ==~ /.*?SNAPSHOT/) {
            this.snapshot = true
            versionToMatch = (version =~ /(.*?)SNAPSHOT/)[0][1]
            println("${this.getClass().getName()}#match: extracting for [${name}] " +
                    "and [${versionToMatch}] (instead of version [${version}])")
        }
        this.versionMatch = this.snapshot ? filename ==~ /.*?${versionToMatch}.*?/
                : filename ==~ /.*?-${versionToMatch}.*?/
        // this needs to take into account a mismatch between castor-1.0.5 and castor-xml-1.0.5
        // really need to match (filename)-(version)
        // so why not filename ==~ /.*?${name}-${version}.*?/ ?
        // ah, but that approach might not work for something like xyz-jar-with-dependencies-1.0.3
        //if (filename ==~ /.*?${name}-.*?/ && filename ==~ /.*?-${version}.*?/) {
        this.fullMatch = filename ==~ /.*?${name}-${versionToMatch}.*?/
    }

    int compareTo(FilenameMatch other) {
        return Ordering.natural().compare(this.filename, other.filename)
    }

    static FilenameMatch bestMatch(List<FilenameMatch> filenameMatches, boolean requireFullMatch = true) {
        List<FilenameMatch> nameMatch = []
        List<FilenameMatch> fullMatches = filenameMatches.findAll { FilenameMatch filenameMatch ->
            filenameMatch.fullMatch
        }
        List<FilenameMatch> nameMatches = filenameMatches.findAll { FilenameMatch filenameMatch ->
            filenameMatch.nameMatch && !filenameMatch.fullMatch
        }
        if (!fullMatches.isEmpty()) {
            // by default we return the last (sorted) match (which would theoretically sort the version,
            // which is relevant for snapshots where the version is a timestamp)
            return fullMatches.sort().last()
        }
        if (!requireFullMatch && !nameMatches.isEmpty()) {
            // by default we return the last (sorted) match (which would theoretically sort the version)
            return nameMatches.sort().last()
        }
        return null
    }

    static FilenameMatch bestMatch(List<String> filenames, def name, def version, boolean requireFullMatch = true) {
        List<FilenameMatch> filenameMatches = filenames.collect { filename ->
            FilenameMatch.match(filename, name, version)
        }
        return FilenameMatch.bestMatch(filenameMatches, requireFullMatch)
    }
}
