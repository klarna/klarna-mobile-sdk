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
| `xcode-15.1-fat` | fat | 15.1 - 15C65 | 5.9.2| swiftlang-5.9.2.2.56 clang-1500.1.0.2.5 |
| `xcode-15.1-slim` | slim | 15.1 - 15C65 | 5.9.2| swiftlang-5.9.2.2.56 clang-1500.1.0.2.5 |


## Cocoapods

This release defaults to using the latest, non-beta version `xcode-15.1-fat`. If you
want to use a different variant, update your Podfile to use a different subspec. E.g:


```ruby
pod 'KlarnaMobileSDK/xcode-15.1-fat', '~> 2.6.15'
```

