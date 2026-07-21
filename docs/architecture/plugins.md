# Plug-in architecture

Kaffenol intends to expose a stable plug-in API for commands and selected extension points. The initial scaffold contains only the module boundary.

Before a plug-in system is implemented, decisions are required for discovery, compatibility, permissions, isolation, lifecycle, packaging, failure containment, and whether plug-ins may contribute image operations or UI. Internal types must not leak into the public API merely for convenience.

Scripting and headless automation are later roadmap capabilities and should share stable command and processing concepts where appropriate, without assuming that the plug-in mechanism must also be the scripting mechanism.
