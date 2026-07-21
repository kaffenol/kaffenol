# Platform integration guidance

- Implement interfaces defined by shared modules; do not move platform APIs inward.
- Keep filesystem, dialogs, clipboard, windowing, and operating-system integration isolated here.
- Document behavioural differences between platforms and provide test doubles where practical.
