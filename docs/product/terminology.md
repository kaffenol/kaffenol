# Terminology

- **Document:** Editable intent: canvas metadata, layers, resources, operations, and persistent metadata.
- **Editor state:** Current tool, active layer, selection, viewport, panels, preferences, and undo/redo coordination.
- **Layer:** An ordered document element that contributes to a composite image.
- **Operation:** An explicit image transformation with defined parameters and pixel semantics.
- **Command:** A named user or automation action invoked consistently from any interface.
- **Render:** Produce a preview or output image from document intent.
- **Export:** Write a rendered result to an external image format without replacing the editable document.
- **Platform service:** An abstraction over operating-system facilities such as files, dialogs, clipboard, and windows.
