# Getting started

## Current phase

The repository contains build and documentation scaffolding only. There are no Kotlin source sets or runnable applications yet.

## Prerequisites

- A JDK supported by the selected Gradle and Kotlin versions
- Git
- Android SDK only after Android implementation begins
- Platform toolchains only when their targets are enabled

Use the checked-in Gradle wrapper rather than a system Gradle installation. Run `./gradlew projects` to inspect the module skeleton and `./scripts/check.sh` to validate the current repository.

Framework and library versions will be selected in a separate dependency-baseline decision immediately before implementation begins.
