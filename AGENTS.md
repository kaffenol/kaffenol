# Kaffenol agent guidance

Kaffenol is a beginner-friendly, cross-platform image editing environment built with Kotlin, Compose Multiplatform, and Skia through Skiko.

## Priorities

1. Correctness and preservation of user data.
2. Simplicity and readability.
3. Cross-platform behaviour.
4. Testability.
5. Measured performance.
6. Feature breadth.

Do not trade correctness or clarity for speculative optimisation.

## Before changing the project

Read `docs/product/vision.md`, `docs/architecture/overview.md`, the nearest directory-specific `AGENTS.md`, and relevant records in `docs/decisions/`. Use `docs/INDEX.md` as the documentation map.

For work affecting multiple modules, persistence, rendering, or public APIs, create an execution plan from `docs/plans/TEMPLATE.md` before implementation.

## Architectural rules

- Keep document and image-processing logic independent of Compose.
- Keep shared modules free of desktop, Android, and iOS APIs.
- Keep persistent document state separate from transient editor and UI state.
- Route user-visible document mutations through the command system and undo/redo.
- Define alpha, colour-space, cancellation, and memory behaviour for image operations.
- Prefer immutable domain values and explicit state transitions.
- Avoid reflection, hidden global state, and speculative native acceleration.
- Explain every new external dependency.
- Use `Result`-style outcomes for expected failures; reserve exceptions for programming errors and unrecoverable failures.
- Prefer KSP over annotation processing when code generation is justified.

## Working method

- Keep changes small, reviewable, and focused.
- Add tests with each implemented feature.
- Update relevant documentation and decisions.
- Do not redesign adjacent systems silently.
- Do not discard user changes or rewrite existing commits.

Run `./scripts/check.sh` before declaring an implementation complete. If it cannot run, report exactly what was and was not validated.
