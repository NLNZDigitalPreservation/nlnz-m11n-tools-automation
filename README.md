# NZQA Modernisation (m11n) automation tools

## Synopsis

This repository contains automation classes and tools that are available for gradle builds in a automation tools plugin.

Some of the classes here correlate with classes in the eqa-build-plugin project, the difference should be in the package
name, where the eqa-build-classes are of package nz.govt.nzqa.eqa.tools.build.automation.* and the m11n-tools-automation
classes are of package nz.govt.nzqa.m11n.tools.automation.*.

There should be regular effort to keep the functionality in same-named classes updated across the two projects. Because
eqa-build-plugin is used to build the m11n-tools-automation artifacts, the use of m11n-tools-automation classes in
the eqa-build-plugin would introduce circular dependencies between the projects, which we avoid by simply duplicating the
functionality instead of using a dependency. But we don't want to duplicate work, so we make the classes almost identical
aside from packaging.

Choose the eqa-build-plugin classes for build-related processing and the m11n-tools-automation for automation-related
processing.

## Motivation

Gradle builds provide part of the platform of build and deploy automation. This plugin makes objects available for
use in scripting.

## Versioning

See the `build.gradle` file for the current jar version that will be generated.

## Installation

The artifacts are built using gradle and will deploy to a maven repository.

To do a complete build (including unit and code tests and javadoc):
```
gradle [clean] build
```

To build the artifacts only (with unit and code tests):
```
gradle [clean] artifactOnlyBuild
```

To upload the jar to maven (SNAPSHOT version):
```
gradle [clean artifactOnlyBuild] publishToMavenLocal
```

To create a release version, which is tagged and uploaded to nexus
(note that 'release' and 'publish' must both be on the command line):
```
gradle [clean artifactOnlyBuild] release publish
```

## API Reference

To generate javadoc:
```
gradle javadoc
```

## Tests

To run unit and other tests:
```
gradle test
```

## Reports

### Unit test reports
Unit test coverage will be produced by
```
gradle test
```

### Jacoco code coverage
```
gradle test jacocoTestReport
```

### check
Running `gradle check` runs both findBugs and PMD source code analyzer.

### findBugs
Normally `gradle check` will only run a findBugs report on the main portion of the source code. findBugs can also run on the test code.
```
gradle findBugsMain
gradle findBugsTest
```

### PMD source code analyzer
Normally `gradle check` will only run a PMD report on the main portion of the source code. PMD can also run on the test code.
```
gradle pmdMain
gradle pmdTest
```

## Contributors

See git commits to see who contributors are. Issues are tracked through NZQA Jira.

## License

&copy; 2016&ndash;2017 New Zealand Qualification Authority. All rights reserved.
