# Architecture overview

Kaffenol is a layered Kotlin Multiplatform system. Compose Multiplatform presents the application, Skia through Skiko displays and composites the canvas, and platform-independent core modules own documents, commands, rendering policy, codecs, and image operations.

Dependencies point inward:

```text
platform applications -> feature/UI modules -> editor and command models
                                         \-> rendering abstractions
core rendering -> document model + image operations + codecs
platform adapters -> shared platform-service interfaces
plug-ins -> stable plug-in API -> public core abstractions
```

The document is editable intent, not a flattened preview. Persistent document state, transient editor state, and platform state remain distinct. Every user entry point invokes the same command system so menus, shortcuts, toolbars, palettes, and eventual automation share behaviour.

Rendering and image processing are separate concerns. Skia is initially the canvas display and compositing engine; CPU Kotlin operations provide a clear baseline. Profiling may later justify native acceleration behind stable interfaces.

The detailed document model, rendering graph, persistence format, plug-in lifecycle, GPU abstraction, and undo storage strategy require separate human-reviewed decisions before coding.
