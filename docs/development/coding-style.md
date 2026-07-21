# Coding style

No production code exists yet. When implementation begins:

- Follow the official Kotlin style and repository `.editorconfig`.
- Prefer immutable values and explicit state transitions.
- Prefer composition and small interfaces over broad inheritance hierarchies.
- Avoid reflection and global mutable state.
- Use coroutines for asynchronous work without blocking UI threads.
- Model expected failures explicitly and produce useful user-facing errors at application boundaries.
- Document colour, alpha, allocation, cancellation, and determinism semantics for image operations.

Formatting and static-analysis tools must enforce mechanical rules once selected.
