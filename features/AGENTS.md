# Feature module guidance

- A feature coordinates UI and commands but does not own document or imaging primitives.
- Depend on core abstractions rather than platform implementations.
- Keep each feature independently testable and avoid feature-to-feature coupling.
- Support keyboard and touch interaction where the target platform permits it.
