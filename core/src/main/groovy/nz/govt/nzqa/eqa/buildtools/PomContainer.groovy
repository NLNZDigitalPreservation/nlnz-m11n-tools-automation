package nz.govt.nzqa.eqa.buildtools

import groovy.transform.Canonical
import groovy.util.slurpersupport.GPathResult

@Canonical
class PomContainer {
    String groupId
    String artifactId
    String version
    File extractedPom

    static PomContainer fromPomContents(String pomContents) {
        GPathResult rootNode = new XmlSlurper().parseText(pomContents)
        //println("rootNode.groupId: [${rootNode.groupId}], class: [${rootNode.groupId.getClass()}]")
        GPathResult resultGroupId = rootNode.groupId
        //println("resultGroupId: [${resultGroupId}], empty: [${resultGroupId.isEmpty()}], text: [${resultGroupId.text()}]")
        String groupId = (rootNode.groupId == null || rootNode.groupId.isEmpty()) ? rootNode.parent.groupId.text() : rootNode.groupId.text()
        String version = (rootNode.version == null || rootNode.version.isEmpty()) ? rootNode.parent.version.text() : rootNode.version.text()
        PomContainer pomContainer = new PomContainer(groupId: groupId, artifactId: rootNode.artifactId,
                version: version)
        return pomContainer
    }

    public boolean isValid() {
        return groupId != null && !groupId.isEmpty() && artifactId != null && !artifactId.isEmpty() &&
                version != null && !version.isEmpty()
    }

    public boolean isExtracted() {
        return isValid() && extractedPom != null && extractedPom.exists()
    }

    public String toString() {
        return "groupId: ${groupId}, artifactId: ${artifactId}, version: ${version}, extractedPom: ${extractedPom}"
    }
}
