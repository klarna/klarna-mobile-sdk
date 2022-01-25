# Klarna Mobile SDK Build Variants

With the release of macOS Monterey in October 2021, Apple has decided to drop support to Xcode 12. Because of that, even though we are still providing Xcode 12 builds, only Xcode 13 SDK builds can be officially supported.

Xcode 12 builds will not be available in the future.

Slim (device-only) and fat (device + simulator) versions are available to be used.


## Variants

Officially supported releases:

| Name | Fat/slim | Xcode Ver. & Build No. | Swift Ver. | Swift Toolchain Ver. |
| ---- | -------- | ---------------------------- | ---------- | -------------------- |
| `xcode-13.1-slim` | slim | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |  
| `xcode-13.1-fat` | fat | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |


Xcode 12 releases:

| Name | Fat/slim | Xcode Ver. & Build No. | Swift Ver. | Swift Toolchain Ver. |
| ---- | -------- | ---------------------------- | ---------- | -------------------- |
| `xcode-12.5.1-slim` | slim | 12.5.1 - 12E507 | 5.4.2| swiftlang-1205.0.28.2 clang-1205.0.19.57 |
| `xcode-12.5.1-fat` | fat | 12.5.1 - 12E507 | 5.4.2| swiftlang-1205.0.28.2 clang-1205.0.19.57 |
