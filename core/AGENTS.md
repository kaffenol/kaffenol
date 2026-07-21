# Core module guidance

- Do not depend on Compose, AWT, Swing, JavaFX, Android, or other platform UI APIs.
- All persistent document mutations must be commands with defined undo behaviour.
- Public domain types must enforce meaningful invariants.
- Image operations must address dimensions, pixel format, alpha, colour space, cancellation, memory use, and determinism.
- Test empty, minimum-sized, malformed, and unusually large inputs where relevant.
- Reuse documented fixtures from `test-support/fixtures/`.
