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
| `xcode-13.1-fat` | fat | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |
| `xcode-13.1-slim` | slim | 13.1 - 13A1030d | 5.5.1| swiftlang-1300.0.31.4 clang-1300.0.29.6 |
| `xcode-14.0.1-fat` | fat | 14.0.1 - 14A400 | 5.7| swiftlang-5.7.0.127.4 clang-1400.0.29.50 |
| `xcode-14.0.1-slim` | slim | 14.0.1 - 14A400 | 5.7| swiftlang-5.7.0.127.4 clang-1400.0.29.50 |


## Cocoapods

This release defaults to using the latest, non-beta version `xcode-14.0.1-fat`. If you
want to use a different variant, update your Podfile to use a different subspec. E.g:


```ruby
pod 'KlarnaMobileSDK/xcode-13.1-fat', '~> 2.3.1'
```

```ruby
pod 'KlarnaMobileSDK/xcode-14.0.1-fat', '~> 2.3.1'
```

