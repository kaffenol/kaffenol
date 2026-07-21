# Rendering pipeline

The rendering pipeline will transform document intent into viewport previews and exported pixels. Skia through Skiko is the intended display and compositing engine, including transformations, clipping, blend modes, paths, text, and GPU-backed drawing where available.

The design must keep these concerns separate:

1. Document traversal and composition policy.
2. Image-operation evaluation.
3. Preview quality, viewport transforms, and caching.
4. Colour conversion and output encoding.
5. Platform surface and GPU integration.

CPU Kotlin implementations establish reference behaviour. Native or Rust paths may be introduced only after representative benchmarks identify a bottleneck, and must remain interchangeable with the reference implementation.

Tile strategy, cache invalidation, render graph shape, thread ownership, and GPU fallback behaviour are unresolved and require ADRs before implementation.
