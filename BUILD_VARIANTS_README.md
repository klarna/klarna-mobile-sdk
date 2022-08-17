# Klarna Mobile SDK Build Variants

Until the release of Swift 5.1, all Swift modules in a project had to be built with (roughly) the
same version of Swift.

While this is not an issue from 5.1 onwards, we offer support for older versions. We also do this
to (if needed) release versions built against beta versions of Xcode. Support for this is available
through Cocoapods, Carthage as well as manual (drag-and-drop) integrations.

We do this by providing multiple builds made with several versions of Xcode as well as fat (device +
simulator) and slim (device-only) builds.

## Variants

For this release, we provide:

| Name | Fat/slim | Xcode Ver. & Build No. | Swift Ver. | Swift Toolchain Ver. |
| ---- | -------- | ---------------------------- | ---------- | -------------------- |
| `xcode-12.5.1-fat` | fat | 12.5.1 - 12E507 | 5.4.2| swiftlang-1205.0.28.2 clang-1205.0.19.57 |
| `xcode-12.5.1-slim` | slim | 12.5.1 - 12E507 | 5.4.2| swiftlang-1205.0.28.2 clang-1205.0.19.57 |
| `xcode-13.1-fat` | fat | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |
| `xcode-13.1-slim` | slim | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |


## Cocoapods

This release defaults to using the latest, non-beta version `xcode-13.1-fat`. If you
want to use a different variant, update your Podfile to use a different subspec. E.g:


```ruby
pod 'KlarnaMobileSDK/xcode-12.5.1-fat', '~> 2.2.2'
```

```ruby
pod 'KlarnaMobileSDK/xcode-13.1-fat', '~> 2.2.2'
```

