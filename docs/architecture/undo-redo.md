# Undo and redo

Every user-visible persistent document change must be represented through the command system and participate in undo/redo. Menus, shortcuts, toolbar buttons, the command palette, plug-ins, and future automation should invoke the same command identifiers.

Commands should expose identity, display metadata, availability, and asynchronous execution semantics. Their implementation must not be coupled to a specific UI widget.

The choice between inverse commands, snapshots, operation logs, or a hybrid—and the memory and persistence policies around history—remains unresolved. It requires a dedicated decision before document mutations are implemented.
