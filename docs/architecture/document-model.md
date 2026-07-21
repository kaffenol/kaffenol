# Document model

A Kaffenol document represents editable intent rather than a rendered bitmap. It is expected to contain canvas metadata, an ordered layer tree, referenced resources, non-destructive operations, and document metadata.

It must not contain active tools, panel visibility, window dimensions, hover state, viewport position, or transient progress.

## Initial invariants

- Canvas dimensions are positive and bounded.
- Layer identifiers are unique within a document.
- A layer tree contains no cycles and each node has at most one parent.
- Resource references either resolve or explicitly represent a missing resource.
- Persistent mutations occur through commands.
- Colour space and alpha semantics are explicit.

Raster, vector, text, adjustment, group, mask, and smart-object designs remain proposals until dedicated ADRs accept them.
