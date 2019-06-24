===============
Developer Guide
===============


Introduction
============

This guide, designed for a NLNZ M11N Tools Automation developer and contributor, covers how to develop and contribute to
the NLNZ M11N Tools Automation. The source for both code and documentation can be found at:
https://github.com/NLNZDigitalPreservation/nlnz-m11n-tools-automation/

Contents of this document
-------------------------

Following this introduction, the NLNZ M11N Tools Automation includes the following sections:

-   **Contributing** - Covers how to contribute to the project.

-   **Basic packages and classes**  - Covers the packages and classes in the project.

-   **Building** - Covers building the nlnz-m11n-tools-automation jars from source.

-   **Developer guidelines** - Covers coding practice and development workflow.

-   **Future milestones** - Covers plans for future development.


Contributing
============

This describes how to contribute to the NLNZ M11N Tools Automation project. General contribution guidelines follow the
guidelines outlined in *Contributing* section of the *Developer Guide* of the
*National Library of New Zealand Developer Guidelines* for a description of the build commands used for this project.
These guidelines can be found at https://nlnz-developer-guidelines.readthedocs.io .

Source Code Repository
----------------------

Source code for the NLNZ M11N Tools Automation is stored in github at:
https://github.com/NLNZDigitalPreservation/nlnz-m11n-tools-automation/
Contributors to the codebase will require a github account.

Major Contributors
------------------

Major contributors to NLNZ M11N Tools Automation are NLNZ (The National Library of New Zealand)
(https://natlib.govt.nz/ ) and New Zealand Qualifications Authority (https://www.nzqa.govt.nz/ ) (where the codebase was
first developed). These institution currently drive most development. All contributors are welcome. Making your interest
in NLNZ M11N Tools Automation known can help to ensure that the tools meets your needs.

Contributors
------------
See individual git commits to see who contributors are.

Basic packages and classes
==========================

TODO a diagram illustrates the interactions between key classes.


Important
=========

There is an assumption in some of the included functionality that unix/linux commands are available. The functionality
may also work in a Windows git bash shell.


Building
========

Requirements
------------

Build requirements
~~~~~~~~~~~~~~~~~~
Building the NLNZ M11N Tools Automation from source requires the following:

-   Java 11 JDK or above (64bit recommended). Current development assumes the use of OpenJDK.

-   Gradle 5.2.1 or later.

-   Groovy 2.5.4 or later.

-   Git (required to clone the project source from Github).

-   Access to maven central either directly or through a proxy.

As the artifact targets are Java-based, it should be possible to build the artifacts on either Linux, Solaris or Windows
targets.

Development platforms
~~~~~~~~~~~~~~~~~~~~~
The following platforms have been used during the development of the NLNZ M11N Tools Automation:

-  Ubuntu GNU/Linux 18.04 LTS and later


Installation
------------
The artifacts are built using gradle and will deploy to a maven repository when various gradle publishing options are
used.

Build commands
--------------

See the *Build commands for Gradle-based projects* section of the *Java Development Guide* of the
*National Library of New Zealand Developer Guidelines* for a description of the build commands used for this project.
These guidelines can be found at https://nlnz-developer-guidelines.readthedocs.io .

Versioning
----------
See the ``build.gradle`` file for the current jar version that will be generated.

A detailed versioning discussion is found in the *Build commands for Gradle-based projects* section of the
*Java Development Guide* of the *National Library of New Zealand Developer Guidelines*. These guidelines can be found at
https://nlnz-developer-guidelines.readthedocs.io . See the section *Git Development Guide*.


Developer Guidelines
====================

See the *National Library of New Zealand Developer Guidelines* found at:
https://nlnz-developer-guidelines.readthedocs.io .


Future milestones
=================

This sections discusses plans for future development.

TODO Discuss plans for future development.
