# Application module guidance

- Compose presentation code belongs here; domain and imaging work does not.
- Composables should be small and primarily declarative.
- UI actions invoke commands rather than mutating documents directly.
- Expose stable, immutable UI state and keep it separate from persistent document state.
- Do not block the UI thread with image processing or file I/O.
- All visible controls require accessible labels and keyboard navigation where applicable.
