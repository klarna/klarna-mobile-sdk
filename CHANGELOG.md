# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.7.2] - 2025-08-15

- Fixed in-app browser liquid glass UI when built with XCode 26 for iOS 26.
- Fixed SFSafariViewController and ASWebAuthenticationSession issues when running on iOS 26 beta simulators.
- Fixed public ObjC headers from KlarnaCore when used via KlarnaMobileSDK.

## [2.7.1] - 2025-07-30

- Added transparency to KlarnaPaymentView.
- Improved logging for flows using ASWebAuthenticationSession.
- Added internal modularization for future product modules and improved maintenance.
- Internal fixes and improvements.

## [2.7.0] - 2025-06-19

- Added Klarna Express Checkout integration with a native button.

## [2.6.29] - 2025-05-13

- Fixed KlarnaSignInSDK error params always returning an empty value.
- Internal bug fixes and improvements.

## [2.6.28] - 2025-04-04

- Fixed issue where KlarnaSignInButton label was not displayed.

## [2.6.27] - 2025-03-05

- Fixed a critical error, affecting last 2 releases, causing a crash in certain cases with cached old SDK configurations.

## [2.6.26] - 2025-03-04

- Fixed empty value in `KlarnaProductEvent` get params function when executed on Objc apps.
- :warning: **This version has a critical issue**: Please use a newer version of the SDK. Future releases will be cautiously checked to prevent these warnings.

## [2.6.25] - 2025-02-24

- Added a fix for inline camera preview in `KlarnaStandaloneWebView`.
- Added new client ID and endpoint support in On-Site Messaging (OSM).
- Optimized lifecycle for fullscreen webview instance.
- Internal fixes and improvements.
- :warning: **This version has a critical issue**: Please use a newer version of the SDK. Future releases will be cautiously checked to prevent these warnings.

## [2.6.24] - 2025-01-13

- Added support for Single sign-on using ASWebAuthenticationSession.
- Updated UI for Sign in with Klarna button.
- Optimized remote asset loading.

## [2.6.23] - 2024-10-23

- Added SIWK tokenization feature.
- Removed enforced consent prompt in Sign in with Klarna integration.
- Improved OSM text rendering process.
- Bug fixes and security improvements.

## [2.6.22] - 2024-08-13

- Updated fullscreen logic to prevent unhandled errors.

## [2.6.21] - 2024-07-12

- Fixed On-Site Messaging (OSM) background color not changing.
- Internal improvements.

## [2.6.20] - 2024-05-10

- Added support for customizing the appearance of the On-Site Messaging (OSM) view.
- Fixed the "Learn more" text to not start from a new line in OSM view.

## [2.6.19] - 2024-05-02

- Reverted enabling mergeable library due to cocoapods failures.

## [2.6.18] - 2024-04-30

- Added missing key in xcprivacy manifest file.
- Mergeable library feature enabled.
- Minor internal improvements.

## [2.6.17] - 2024-04-04

- Added support for Sign in with Klarna in NA and OC regions.
- Fixed memory leak in Sign in with Klarna integration.

## [2.6.16] - 2024-02-28

- Fixed CheckoutView memory leak.
- Fixed build date/time format.
- Fixed SDK monitoring for SIWK when initializing.

## [2.6.15] - 2024-02-08

- Privacy Manifest file included inside KlarnaMobileSDK framework.
- Environment and region values can be added through new constructor APIs. 
- Internal improvements and optimizations.

## [2.6.14] - 2024-01-10

- Set the default variant of the SDK to basic.
- Implemented minor internal security fixes and improvements.

## [2.6.13] - 2023-12-18

- Fixed javascript code execution vulnerability.
- Added URL validations for SDK WebViews.
- Updated SDK User-Agents.
- Improved SDK monitoring.

## [2.6.12] - 2023-11-03

- Fix duplicated mesage handler on webview.
- Added default value for auto finalize as null.

## [2.6.11] - 2023-10-05

- Fixed navigation bar color when Internal Browser is presented.
- Added @objc flag in KlarnaResourceEndpoint.
- Xcode 15 build.

## [2.6.10] - 2023-08-22

- Added progress indicator in Sign In With Klarna Button.
- Fixed style in Sign In With Klarna Button. 
- Improved performance for Sign In With Klarna.

## [2.6.9] - 2023-08-17

- Fix Logging level.
- Internal optimization and improvements for Sign In With Klarna.

## [2.6.8] - 2023-08-08

- Fix `Pointer is missing a nullability type specifier` warning.

## [2.6.7] - 2023-07-27

- Fix Umbrella header warning message.
- Fix Webview content inside Internal Browser.
- Added webview inspectable variable to `KlarnaStandaloneWebView`.

## [2.6.6] - 2023-06-28

- Fix UIActivityViewController for iPad.

## [2.6.5] - 2023-05-26

- Updated assets.

## [2.6.4] - 2023-05-02

- Fix screen orientation in fullscreen per device size.
- Fix fullscreen dismiss on certain touch events.

## [2.6.3] - 2023-04-26

- Fixed: Fullscreen being dismissed on OPF.

## [2.6.2] - 2023-04-21

- Internal optimization and improvements for Sign In With Klarna.

## [2.6.1] - 2023-04-14

- Fixed Sign In with Klarna POST Request.

## [2.6.0] - 2023-04-11

- Added Sign in with Klarna integration.

## [2.5.1] - 2023-03-30

- Added backgroundColor and isOpaque properties to `KlarnaStandaloneWebView`.
- Fixed error while validating returnURL when there were multiple URLs on info.plist.
- Fixed delegate methods not being called on Post Purchase SDK Delegate.
- Xcode 14.2 build.

## [2.5.0] - 2023-01-20

- Added Klarna Express Button integration.
- Post Purchase API updated to make it consistent with other SDK products.

## [2.4.2] - 2022-12-28

- Updated Checkout keyboard handling behavior.
- Internal improvements for experiments decoding.

## [2.4.1] - 2022-11-29

- Fixed: OSM View stacks elements when the render function is called multiple times.
- Updated SDK assets for Klarna Payments.

## [2.4.0] - 2022-11-22

- Added support for Klarna Checkout in Standalone, Hybrid and WebView integrations.
- Added `KlarnaCheckoutView` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

## [2.3.3] - 2022-11-11

- Fixed: Fullscreen did not dismiss when the app was in the background.

## [2.3.2] - 2022-10-31

- Fixed: Klarna payment authorization with a non-alphanumeric app name.
- Internal improvements for fullscreens.
- Internal optimizations.

## [2.3.1] - 2022-09-27

- Xcode 14 support.

## [2.3.0] - 2022-09-23

- Added `KlarnaComponent`. General class that envelops any Klarna Component, regardless of integration. 
- Added `KlarnaMultiComponent`. Components conforming to this interface protocol may render multiple products at once.
- Added `KlarnaStandaloneComponent`. For components that host and own their content. 
- Added `KlarnaSingleComponent`. Components conforming to this protocol render a single Klarna product at a time.
- Added `KlarnaEventHandler` interface. Provides methods that will notify events happening to a product in a Klarna component.
- Added `KlarnaSizingDelegate` interface. Provides a size delegate that will notify of sizing changes.
- Added `KlarnaStandaloneWebView` class.
- Added `KlarnaEnvironment` class.
- Added `KlarnaProduct` class.
- Added `KlarnaProductEvent` class.
- Added `KlarnaProductOptions` class.
- Renamed `KlarnaMobileSDKError` to `KlarnaError`.
- Renamed `KlarnaOSMRegion` to `KlarnaRegion`.
- Renamed `KlarnaOSMTheme` to `KlarnaTheme`.

### Deprecations

- `KlarnaWebView` is deprecated as a type. Use `WKWebView` instead.
- `KlarnaEventListener` is deprecated. Use `KlarnaEventHandler` instead.
- `KlarnaEvent` is deprecated. Use `KlarnaProductEvent` through eventHandler instead.
- `KlarnaMobileSDKError` is deprecated. Use `KlarnaError` instead.

### Klarna Payments

- `KlarnaHybridSDK` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

### Hybrid

- `KlarnaHybridSDK` extends `KlarnaMultiComponent`.
#### Deprecations

- `deviceIdentifier` is deprecated. Should not be used.
- `registerEventListener` is deprecated. Replaced by `KlarnaEventHandler`.
- `KlarnaHybridEventListener` is deprecated. Use `KlarnaEventHandler` and `KlarnaFullscreenEventListener` instead.
- `KlarnaHybridSDKEventListener` was deleted. Was already deprecated since v1.3.0.

### OSM

- `KlarnaOSMView` extends `KlarnaStandaloneComponent` and `KlarnaSingleComponent`.
#### Deprecations

- `KlarnaOSMViewEventListener` is deprecated. Use `KlarnaSizingDelegate`.
- `callback` on `render(callback: @escaping RenderResult)` is no longed needed. Use `func klarnaComponent(_ klarnaComponent: KlarnaComponent, dispatchedEvent event: KlarnaProductEvent)` on the protocol `KlarnaEventHandler`.
- `KlarnaOSMEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaOSMRegion` is deprecated. Use `KlarnaRegion` instead.
- `KlarnaOSMTheme` is deprecated. Use `KlarnaTheme` instead.

### Post Purchase

- `KlarnaPostPurchaseSDK` extends `KlarnaSingleComponent` and `KlarnaComponent`.
#### Deprecations

- `KlarnaPostPurchaseEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaPostPurchaseRegion` is deprecated. Use `KlarnaRegion` instead.

## [2.2.3] - 2022-09-20

- Fixed: OSM hostViewController presentation behavior

## [2.2.2] - 2022-08-17

- Removed all references for Card Scan (Camera Usage) in Basic framework.

## [2.2.1] - 2022-07-28

- Fix typo on API.
- Fix crash on OSM for iOS 16 beta2. (rdar://FB10893183)

## [2.2.0] - 2022-07-13

- Added support for Post Purchase

## [2.1.7] - 2022-05-30

- Internal optimizations.

## [2.1.6] - 2022-05-04

- Added support for opening SFSafariViewController.

## [2.1.5] - 2022-03-23

- Improved fullscreen performance for One Klarna.

## [2.1.4] - 2022-02-09

- Internal browser now support universal links.
- Fixed margins when the keyboard appears in Separate Fullscreen.
- Fixed some memory leaks.

## [2.1.3] - 2022-01-17

- Fixed keyboard crash introduced in 2.1.2.

## [2.1.2] - 2022-01-14

- Added support for opening PDF files.
- Fix margin error when the keyboard appears in fullscreen.
- Added listener to open BankID on internal Webview.
- :warning: **This version has a critical issue**: Please use a newer version of the SDK. Future releases will be cautiously checked to prevent these warnings.

## [2.1.1] - 2021-12-13

- Fix Fullscreen timeout animation for iOS 15.

## [2.1.0] - 2021-11-15

- Improved support for 3DSecure flows in new markets.
- Added "returnUrl" to the `KlarnaPaymentView` constructor parameters.
- Deprecated `KlarnaHybridSDKEventListener` and added separate callbacks for events and fullscreen transitions.
- Internal optimization and improvements.

## [2.0.44] - 2021-09-08

- Fixed: OSM delegate available in Objective-c.
- Fixed: Space between lines in OSM.
- Version control for Carthage integration.

## [2.0.43] - 2021-06-11

- Fixed: OSM will create a temp folder where it will store the resources.

## [2.0.42] - 2021-05-27

- Fixed: WKWebView with contet offscreen when keyboard appears in iOS 13.3 or lower versions (https://bugs.webkit.org/show_bug.cgi?id=192564)
- Resources are stored in cache, improving the load times.

## [2.0.41] - 2021-05-06

- Added Objective-C initializers with default value for alternative endpoint.

## [2.0.40] - 2021-05-04

- Fix bug for OSM with alternative resource endpoint .alternative2.

## [2.0.39] - 2021-04-26

- Full framework version is selected as default

## [2.0.38] - 2021-04-22

- Support for alternative resources endpoint

## [2.0.37] - 2021-04-13

- Support M1 chips in XCFramework.

## [2.0.36] - 2021-03-22

- Update analytics events.

## [2.0.35] - 2021-03-11

- Fix bug on card scanning due to ITP restriction introduced on iOS 14.
- WebRTC support.
- Log warning if methods are being called a second time before the call returned.

## [2.0.34] - 2021-03-02

- Performance improvements: Removed a race condition that happens when the user has a slow network connection.

## [2.0.33] - 2021-02-18

- Fix registerEventListener in hybrid integration.

## [2.0.32] - 2021-02-11

- On site marketing available to Objective-C.

## [2.0.31] - 2021-02-09

- Overall performance improvements.

## [2.0.30] - 2020-12-03

- Overall performance improvements.

## [2.0.29] - 2020-11-19

- Fix error: virtual filesystem overlay

## [2.0.28] - 2020-10-28

- Support for Xcode 11.3.1.

## [2.0.27] - 2020-10-26

- Fix redirections in the internal browser.

## [2.0.26] - 2020-10-20

- Framework available using Swift Package Manager.
- Carthage support.
- Remove the word "basic" in subspecs for Cocoapods.
- ABI Stability.

## [2.0.25] - 2020-09-28

- UIWindow for Fullscreens are hidden when it's closed.

## [2.0.24] - 2020-09-23

- Fixed issue that freeze the authorize flow when KPView was being dismissed.

## [2.0.23] - 2020-09-22

- Fixed issue when the fullscreen was dismissed.

## [2.0.22] - 2020-09-16

- Adds support for Xcode 12 and Swift 5.3.

## [2.0.21] - 2020-09-10

- Fix issue with showing fullscreen.

## [2.0.20] - 2020-08-12

- Basic support for static On site marketing - beta version

## [2.0.19] - 2020-07-31

- Overall performance improvements.

## [2.0.18] - 2020-06-24

- Fixed an issue with keyboard for OTP input field.

## [2.0.17] - 2020-06-12

- Fixed an issue related to navigation between two fullscreen views.

## [2.0.16] - 2020-06-11

- Overall performance improvements.

## [2.0.15] - 2020-05-26

- Full framework with card scan.
- Default/basic framework without card scan.

## [2.0.14] - 2020-05-20

- Fix crash related to universal framework.
- Overall performance improvements.

## [2.0.13] - 2020-05-05

- Support Xcode 11.4.1

## [2.0.12] - 2020-04-16

- Overall performance improvements.

## [2.0.11] - 2020-03-26

- Support Swift 5.2.

## [2.0.10] - 2020-02-27

- Fix crash related to the framework when exporting the app.

## [2.0.9] - 2020-02-14

- Support for dark mode.
- Remove _all_ references and any support for UIWebView from the SDK.
- Enhanced 3DSecure card flows.
- Fixed some modal dialog presentation in iOS 13 and for iPads.
