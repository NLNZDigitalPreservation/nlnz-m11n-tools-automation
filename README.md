# National Library of New Zealand Modernisation (m11n) automation tools

## Synopsis

This repository contains automation classes and tools that are available for gradle builds in a automation tools plugin.

This project was originally created and used by the New Zealand Qualifications Authority, but has been repurposed for
use by the National Library of New Zealand.

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

## Important

There is an assumption in some of the included functionality that unix commands are available. The functionality
may also work in a Windows git bash shell.

## Versioning

See the `build.gradle` file for the current jar version that will be generated.

## Installation

The artifacts are built using gradle and will deploy to a maven repository.

### Complete build
To do a complete build (including unit and code tests and javadoc):
```
gradle [clean] build
```

### Complete build with upgrade-preparation warnings
When gradle 5.x is release, some gradle features and certain build scripts will not work. In order to prepare for
this eventuality, builds can include the `warning-mode` to notify in advance of changes that will need to happen.
```
 gradle [clean] build --warning-mode all
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
While the jacoco plugin is included in builds, there isn't currently any tasks associated with jacoco.
TODO Add jacoco code coverage tasks.

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

See git commits to see who contributors are. Issues are tracked through the git repository issue tracker.

## License

### For commits up to and including October 10, 2018
&copy; 2016&ndash;2018 New Zealand Qualification Authority. All rights reserved.

### For commits after October 10, 2018
&copy; 2018 National Library of New Zealand. All rights reserved. MIT license.
