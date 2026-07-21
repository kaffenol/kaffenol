# Module boundaries

| Module | Responsibility | Must not own |
| --- | --- | --- |
| `app/common` | Shared Compose shell and navigation | Domain mutations or platform APIs |
| `app/desktop`, `app/android` | Platform entry points and composition roots | Shared domain behaviour |
| `core/editor-model` | Transient editor/workspace state | Serialized document state or Compose types |
| `core/document-engine` | Document structure and invariants | UI or platform concerns |
| `core/command-system` | Commands, dispatch, and undo/redo contracts | Widget-specific actions |
| `core/render-engine` | Rendering abstractions and composition policy | Editor presentation state |
| `core/image-codecs` | Decode/encode abstractions and metadata transfer | File pickers or UI |
| `core/image-operations` | Explicit pixel operations | Canvas widgets |
| `core/persistence` | Editable document persistence contracts | OS-specific file access |
| `features/*` | User-facing feature coordination | Foundational domain types |
| `platform/services` | Shared interfaces for OS facilities | Concrete OS APIs |
| `platform/desktop`, `platform/android` | Platform service implementations | Cross-platform rules |
| `plugin-api` | Stable extension contracts | Internal implementation details |
| `test-support/*` | Shared fixtures, fakes, and assertions | Production behaviour |

No module dependencies are declared during scaffolding. Add each dependency only with an implementation plan that explains the direction and purpose.
