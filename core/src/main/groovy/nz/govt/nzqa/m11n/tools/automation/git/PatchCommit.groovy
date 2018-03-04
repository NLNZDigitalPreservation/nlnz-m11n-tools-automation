package nz.govt.nzqa.m11n.tools.automation.git

import groovy.transform.Canonical
import groovy.transform.EqualsAndHashCode

@Canonical
@EqualsAndHashCode(includes="commitHash")
class PatchCommit {
    String commitHash
    File commitFile
    List<PatchCommit> patchCommits = [ ]
}
