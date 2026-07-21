# ADR 0001: Use Kotlin Multiplatform

- Status: Accepted
- Date: 2026-07-20

## Context

Kaffenol targets desktop and mobile while benefiting from the JVM ecosystem, Gradle, Java interoperability on desktop, coroutines, and a language familiar to Java developers.

## Decision

Use Kotlin Multiplatform for shared application, domain, and imaging code. Keep platform-specific APIs behind explicit platform modules and services.

## Consequences

Most behaviour can be shared across targets. Platform integration still needs target-specific implementations. Native acceleration remains optional and must sit behind Kotlin interfaces.
