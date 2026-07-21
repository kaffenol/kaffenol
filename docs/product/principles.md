# Product principles

## Beginners first

Ordinary edits should not require knowledge of channels, colour profiles, compositing mathematics, or codecs.

## Progressive disclosure

Common controls appear first. Specialised and technical controls remain discoverable without crowding the primary workflow.

## Safe by default

Kaffenol must not overwrite an original image without explicit user action. User-visible changes are reversible where practical and participate in undo/redo.

## Cross-platform by design

Linux is a first-class desktop platform. Shared behaviour should remain consistent across Linux, Windows, macOS, Android, and future iOS support while respecting platform conventions.

## Correctness before optimisation

Start with clear Kotlin implementations. Add native acceleration only for measured bottlenecks and without changing observable results.
