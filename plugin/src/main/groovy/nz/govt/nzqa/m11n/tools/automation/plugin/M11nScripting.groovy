package nz.govt.nzqa.m11n.tools.automation.plugin

import org.gradle.api.Plugin
import org.gradle.api.Project

/**
 * Modernisation (m11n) scripting plugin.
 */
class M11nScripting implements Plugin<Project> {
    Project project

    /**
     * Apply this plugin to the given target object.
     * Currently we do nothing, but it does make its dependencies available.
     *
     * @param target The target object
     */
    @Override
    void apply(Project target) {
        this.project = target
    }
}
