# ADR 0003: Separate document and UI models

- Status: Accepted
- Date: 2026-07-20

## Context

The application needs persistent editing state and transient interface state. Combining them would couple file formats and domain rules to UI implementation details.

## Decision

Persistent document state and transient editor/UI state use separate models. UI models may refer to document identifiers but are not serialized as part of the document. A later workspace format may persist selected transient state independently.

## Consequences

UI changes do not require document-format migrations. Explicit mapping and coordination code is required. Selection, viewport, and panel state are not restored from the image document itself.
