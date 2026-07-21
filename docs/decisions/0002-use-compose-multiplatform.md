# ADR 0002: Use Compose Multiplatform

- Status: Accepted
- Date: 2026-07-20

## Context

The editor needs a modern, state-driven interface with panels, toolbars, shortcuts, inspectors, overlays, themes, and layouts adapted for desktop and touch devices.

## Decision

Use Compose Multiplatform for shared application UI. Use Skia through Skiko for direct canvas rendering and compositing where Compose primitives are insufficient.

## Consequences

UI concepts can be shared across desktop and mobile. Domain modules must remain independent of Compose. Platform-specific behaviour and responsive layouts are still required.
