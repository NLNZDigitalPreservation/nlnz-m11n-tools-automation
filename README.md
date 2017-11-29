# NZQA Modernisation (m11n) automation tools

## Synopsis

This repository contains automation classes and tools that are available for gradle builds in a automation tools plugin.

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
