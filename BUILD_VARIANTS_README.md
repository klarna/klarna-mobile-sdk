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
| `xcode-10.2-fat` | fat | 10.2 - 10E125 | 5.0| swiftlang-1001.0.69.5 clang-1001.0.46.3 |
| `xcode-10.2-slim` | slim | 10.2 - 10E125 | 5.0| swiftlang-1001.0.69.5 clang-1001.0.46.3 |
| `xcode-10.3-fat` | fat | 10.3 - 10G8 | 5.0.1| swiftlang-1001.0.82.4 clang-1001.0.46.5 |
| `xcode-10.3-slim` | slim | 10.3 - 10G8 | 5.0.1| swiftlang-1001.0.82.4 clang-1001.0.46.5 |
| `xcode-11.3-fat` | fat | 11.3 - 11C29 | 5.1.3| swiftlang-1100.0.282.1 clang-1100.0.33.15 |
| `xcode-11.3-slim` | slim | 11.3 - 11C29 | 5.1.3| swiftlang-1100.0.282.1 clang-1100.0.33.15 |
| `xcode-11.4-fat` | fat | 11.4 - 11E146 | 5.2| swiftlang-1103.0.32.1 clang-1103.0.32.29 |
| `xcode-11.4-slim` | slim | 11.4 - 11E146 | 5.2| swiftlang-1103.0.32.1 clang-1103.0.32.29 |


## Cocoapods

This release defaults to using the latest, non-beta version `xcode-11.4-fat`. If you 
want to use a different variant, update your Podfile to use a different subspec. E.g:


```ruby
pod 'KlarnaMobileSDK/xcode-10.2-fat', '~> 2.0.12'
```

```ruby
pod 'KlarnaMobileSDK/xcode-10.3-fat', '~> 2.0.12'
```

```ruby
pod 'KlarnaMobileSDK/xcode-11.3-fat', '~> 2.0.12'
```

```ruby
pod 'KlarnaMobileSDK/xcode-11.4-fat', '~> 2.0.12'
```