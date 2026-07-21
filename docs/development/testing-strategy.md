# Testing strategy

Testing will follow module boundaries:

- Unit tests for domain invariants, commands, codecs, and image operations.
- Round-trip tests for persistence and metadata.
- Golden or pixel assertions for rendering and image operations, with documented tolerances.
- Contract tests shared by platform-service implementations.
- UI tests for critical workflows, keyboard access, and accessibility.
- Representative benchmarks before performance-specific implementation decisions.

Every feature should cover an ordinary case, an edge case, and invalid input or failure. Persistent changes also require undo and redo coverage. Small fixtures belong in `test-support/fixtures/` and must be documented in its manifest.
