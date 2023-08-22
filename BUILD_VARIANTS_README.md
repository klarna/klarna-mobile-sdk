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
| `xcode-14.2-fat` | fat | 14.2 - 14C18 | 5.7.2| swiftlang-5.7.2.135.5 clang-1400.0.29.51 |
| `xcode-14.2-slim` | slim | 14.2 - 14C18 | 5.7.2| swiftlang-5.7.2.135.5 clang-1400.0.29.51 |


## Cocoapods

This release defaults to using the latest, non-beta version `xcode-14.2-fat`. If you
want to use a different variant, update your Podfile to use a different subspec. E.g:


```ruby
pod 'KlarnaMobileSDK/xcode-14.2-fat', '~> 2.6.10'
```

