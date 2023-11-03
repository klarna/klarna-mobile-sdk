# Changelog
All notable changes to Klarna Mobile SDK will be documented in this file.

## iOS
Future releases will be documented in this section.

### [2.6.12] - 2023-11-03
- Fix duplicated mesage handler on webview.
- Added default value for auto finalize as null.

### [2.6.11] - 2023-10-05
- Fixed navigation bar color when Internal Browser is presented.
- Added @objc flag in KlarnaResourceEndpoint.
- Xcode 15 build.

### [2.6.10] - 2023-08-22
- Added progress indicator in Sign In With Klarna Button.
- Fixed style in Sign In With Klarna Button. 
- Improved performance for Sign In With Klarna.

### [2.6.9] - 2023-08-17
- Fix Logging level.
- Internal optimization and improvements for Sign In With Klarna.

### [2.6.8] - 2023-08-08
- Fix `Pointer is missing a nullability type specifier` warning.

### [2.6.7] - 2023-07-27
- Fix Umbrella header warning message.
- Fix Webview content inside Internal Browser.
- Added webview inspectable variable to `KlarnaStandaloneWebView`.

### [2.6.6] - 2023-06-28
- Fix UIActivityViewController for iPad.

### [2.6.5] - 2023-05-26
- Updated assets.

### [2.6.4] - 2023-05-02
- Fix screen orientation in fullscreen per device size.
- Fix fullscreen dismiss on certain touch events.

### [2.6.3] - 2023-04-26
- Fixed: Fullscreen being dismissed on OPF.

### [2.6.2] - 2023-04-21
- Internal optimization and improvements for Sign In With Klarna.

### [2.6.1] - 2023-04-14
- Fixed Sign In with Klarna POST Request.

### [2.6.0] - 2023-04-11
- Added Sign in with Klarna integration.

### [2.5.1] - 2023-03-30
- Added backgroundColor and isOpaque properties to `KlarnaStandaloneWebView`.
- Fixed error while validating returnURL when there were multiple URLs on info.plist.
- Fixed delegate methods not being called on Post Purchase SDK Delegate.
- Xcode 14.2 build.

### [2.5.0] - 2023-01-20
- Added Klarna Express Button integration.
- Post Purchase API updated to make it consistent with other SDK products.

### [2.4.2] - 2022-12-28
- Updated Checkout keyboard handling behavior.
- Internal improvements for experiments decoding.

### [2.4.1] - 2022-11-29
- Fixed: OSM View stacks elements when the render function is called multiple times.
- Updated SDK assets for Klarna Payments.

### [2.4.0] - 2022-11-22
- Added support for Klarna Checkout in Standalone, Hybrid and WebView integrations.
- Added `KlarnaCheckoutView` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

### [2.3.3] - 2022-11-11
- Fixed: Fullscreen did not dismiss when the app was in the background.

### [2.3.2] - 2022-10-31
- Fixed: Klarna payment authorization with a non-alphanumeric app name.
- Internal improvements for fullscreens.
- Internal optimizations.

### [2.3.1] - 2022-09-27
- Xcode 14 support.

### [2.3.0] - 2022-09-23
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

##### Deprecations
- `KlarnaWebView` is deprecated as a type. Use `WKWebView` instead.
- `KlarnaEventListener` is deprecated. Use `KlarnaEventHandler` instead.
- `KlarnaEvent` is deprecated. Use `KlarnaProductEvent` through eventHandler instead.
- `KlarnaMobileSDKError` is deprecated. Use `KlarnaError` instead.

#### Klarna Payments
- `KlarnaHybridSDK` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

#### Hybrid
- `KlarnaHybridSDK` extends `KlarnaMultiComponent`.
##### Deprecations
- `deviceIdentifier` is deprecated. Should not be used.
- `registerEventListener` is deprecated. Replaced by `KlarnaEventHandler`.
- `KlarnaHybridEventListener` is deprecated. Use `KlarnaEventHandler` and `KlarnaFullscreenEventListener` instead.
- `KlarnaHybridSDKEventListener` was deleted. Was already deprecated since v1.3.0.

#### OSM
- `KlarnaOSMView` extends `KlarnaStandaloneComponent` and `KlarnaSingleComponent`.
##### Deprecations
- `KlarnaOSMViewEventListener` is deprecated. Use `KlarnaSizingDelegate`.
- `callback` on `render(callback: @escaping RenderResult)` is no longed needed. Use `func klarnaComponent(_ klarnaComponent: KlarnaComponent, dispatchedEvent event: KlarnaProductEvent)` on the protocol `KlarnaEventHandler`.
- `KlarnaOSMEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaOSMRegion` is deprecated. Use `KlarnaRegion` instead.
- `KlarnaOSMTheme` is deprecated. Use `KlarnaTheme` instead.

#### Post Purchase
- `KlarnaPostPurchaseSDK` extends `KlarnaSingleComponent` and `KlarnaComponent`.
##### Deprecations
- `KlarnaPostPurchaseEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaPostPurchaseRegion` is deprecated. Use `KlarnaRegion` instead.

### [2.2.3] - 2022-09-20
- Fixed: OSM hostViewController presentation behavior

### [2.2.2] - 2022-08-17
- Removed all references for Card Scan (Camera Usage) in Basic framework. 

### [2.2.1] - 2022-07-28
- Fix typo on API.
- Fix crash on OSM for iOS 16 beta2. (rdar://FB10893183)

### [2.2.0] - 2022-07-13
- Added support for Post Purchase

### [2.1.7] - 2022-05-30
- Internal optimizations.

### [2.1.6] - 2022-05-04
- Added support for opening SFSafariViewController.

### [2.1.5] - 2022-03-23
- Improved fullscreen performance for One Klarna.

### [2.1.4] - 2022-02-09
- Internal browser now support universal links.
- Fixed margins when the keyboard appears in Separate Fullscreen.
- Fixed some memory leaks.

### [2.1.3] - 2022-01-17
- Fixed keyboard crash introduced in 2.1.2.

### [2.1.2] - 2022-01-14 - Please, don't use.
- Added support for opening PDF files.
- Fix margin error when the keyboard appears in fullscreen.
- Added listener to open BankID on internal Webview.

### [2.1.1] - 2021-12-13
- Fix Fullscreen timeout animation for iOS 15.

### [2.1.0] - 2021-11-15
- Improved support for 3DSecure flows in new markets.
- Added "returnUrl" to the `KlarnaPaymentView` constructor parameters.
- Deprecated `KlarnaHybridSDKEventListener` and added separate callbacks for events and fullscreen transitions.
- Internal optimization and improvements.

### [2.0.44] - 2021-09-08
- Fixed: OSM delegate available in Objective-c.
- Fixed: Space between lines in OSM.
- Version control for Carthage integration.

### [2.0.43] - 2021-06-11
- Fixed: OSM will create a temp folder where it will store the resources.

### [2.0.42] - 2021-05-27
- Fixed: WKWebView with contet offscreen when keyboard appears in iOS 13.3 or lower versions (https://bugs.webkit.org/show_bug.cgi?id=192564) 
- Resources are stored in cache, improving the load times.

### [2.0.41] - 2021-05-06
- Added Objective-C initializers with default value for alternative endpoint.

### [2.0.40] - 2021-05-04
- Fix bug for OSM with alternative resource endpoint .alternative2.

### [2.0.39] - 2021-04-26
- Full framework version is selected as default

### [2.0.38] - 2021-04-22
- Support for alternative resources endpoint

### [2.0.37] - 2021-04-13
- Support M1 chips in XCFramework.

### [2.0.36] - 2021-03-22
- Update analytics events.

### [2.0.35] - 2021-03-11
- Fix bug on card scanning due to ITP restriction introduced on iOS 14.
- WebRTC support.
- Log warning if methods are being called a second time before the call returned.

### [2.0.34] - 2021-03-02
- Performance improvements: Removed a race condition that happens when the user has a slow network connection.

### [2.0.33] - 2021-02-18
- Fix registerEventListener in hybrid integration.

### [2.0.32] - 2021-02-11
- On site marketing available to Objective-C.

### [2.0.31] - 2021-02-09
- Overall performance improvements. 

### [2.0.30] - 2020-12-03
- Overall performance improvements.

### [2.0.29] - 2020-11-19
- Fix error: virtual filesystem overlay

### [2.0.28] - 2020-10-28
- Support for Xcode 11.3.1.

### [2.0.27] - 2020-10-26
- Fix redirections in the internal browser.

### [2.0.26] - 2020-10-20
- Framework available using Swift Package Manager.
- Carthage support.
- Remove the word "basic" in subspecs for Cocoapods.
- ABI Stability.

### [2.0.25] - 2020-09-28
- UIWindow for Fullscreens are hidden when it's closed.

### [2.0.24] - 2020-09-23
- Fixed issue that freeze the authorize flow when KPView was being dismissed.

### [2.0.23] - 2020-09-22
- Fixed issue when the fullscreen was dismissed.

### [2.0.22] - 2020-09-16
- Adds support for Xcode 12 and Swift 5.3.

### [2.0.21] - 2020-09-10
- Fix issue with showing fullscreen.

### [2.0.20] - 2020-08-12
- Basic support for static On site marketing - beta version

### [2.0.19] - 2020-07-31
- Overall performance improvements.

### [2.0.18] - 2020-06-24
- Fixed an issue with keyboard for OTP input field.

### [2.0.17] - 2020-06-12
- Fixed an issue related to navigation between two fullscreen views.

### [2.0.16] - 2020-06-11
- Overall performance improvements.

### [2.0.15] - 2020-05-26
- Full framework with card scan.
- Default/basic framework without card scan.

### [2.0.14] - 2020-05-20
- Fix crash related to universal framework.
- Overall performance improvements.

### [2.0.13] - 2020-05-05
- Support Xcode 11.4.1

### [2.0.12] - 2020-04-16
- Overall performance improvements.

### [2.0.11] - 2020-03-26
- Support Swift 5.2.

### [2.0.10] - 2020-02-27
- Fix crash related to the framework when exporting the app.

### [2.0.9] - 2020-02-14
- Support for dark mode.
- Remove _all_ references and any support for UIWebView from the SDK.
- Enhanced 3DSecure card flows.
- Fixed some modal dialog presentation in iOS 13 and for iPads.

## Android

### [2.6.9] - 2023-09-05
- Changed the `launchMode` attribute for `KlarnaCustomTabActivity` from `singleTop` to `singleTask`
- Minor internal improvements.

### [2.6.8] - 2023-08-22
- Changed Sign in with Klarna button logo layout.
- Added support for loading indicator for Sign in with Klarna button.
- Improved performance by caching for Sign in with Klarna logins.
- Fixed text scaling issues for native buttons.
- Added support for skipping load calls in legacy tokenize flows.
- Added permission support for hybrid integrations.

### [2.6.7] - 2023-08-09
- Card scanning results are wiped from memory after usage.
- KlarnaPaymentView is made visible also on authorize call.

### [2.6.6] - 2023-07-27
- Fixed a proguard issue for fullscreen dialogs.

### [2.6.5] - 2023-07-06
- Fixed proguard issues for public Sign in with Klarna classes.
- Fixed an issue with cancelling dialogs with the back button.

### [2.6.4] - 2023-06-21
- Internal Browser now uses dialog fragments instead of an Activity.
- Fixed user cancel false-positives for Sign in with Klarna. 
- Fixed proguard issues for internal Sign in with Klarna data classes.

### [2.6.3] - 2023-05-26
- Fixed blank pages reporting error from background.
- Updated assets.
- Improved monitoring for application lifecycle.

### [2.6.2] - 2023-05-09
- Added support for permission handling in Separate Fullscreen.
- Fixed redirect URI validation for Sign in With Klarna.
- Removed max width and height limits for KlarnaSignInButton.

### [2.6.1] - 2023-04-21
- Fixed initial validation errors for KlarnaSignInButton.
- Internal optimization and improvements for Sign In With Klarna.

### [2.6.0] - 2023-04-11
- Added Sign in with Klarna integration.

### [2.5.2] - 2023-02-21
- Renamed internal assets of the SDK to fix conflicts with host applications.

### [2.5.1] - 2023-01-30
- Fixed OkHttp header encoding issues.
- Optimized internal OkHttpClient usage.

### [2.5.0] - 2023-01-19
- Added Klarna Express Button integration.

### [2.4.3] - 2023-01-13
- Bug fixes and stability improvements.

### [2.4.2] - 2022-12-19
- Use English locale in the SDK's internal string functions instead of device's/app's locale configuration.

### [2.4.1] - 2022-11-29
- Updated SDK assets for Klarna Payments.

### [2.4.0] - 2022-11-21
- Added support for Klarna Checkout in Standalone, Hybrid and WebView integrations.
- Added `KlarnaCheckoutView` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

### [2.3.2] - 2022-10-26
- Improved handling of files and links.
- Removed network security config file.
- Improved debugging capabilities during development.
- Minor internal improvements.

### [2.3.1] - 2022-10-03
- Fixed fullscreen height issue with quick authorize calls for One Klarna payment flows.

### [2.3.0] - 2022-09-23
- Added `KlarnaComponent`. General class that envelops any Klarna Component, regardless of integration. 
- Added `KlarnaMultiComponent`. Components conforming to this interface protocol may render multiple products at once.
- Added `KlarnaStandaloneComponent`. For components that host and own their content. 
- Added `KlarnaSingleComponent`. Components conforming to this protocol render a single Klarna product at a time.
- Added `KlarnaEventHandler` interface. Provides methods that will notify events happening to a product in a Klarna component.
- Added `KlarnaStandaloneWebView` class.
- Added `KlarnaEnvironment` enum class.
- Added `KlarnaProduct` enum class.
- Added `KlarnaProductEvent` data class.
- Added `KlarnaOSMRegion` enum class.
- Added `KlarnaOSMTheme` enum class.
- Added public constructor to `KlarnaProductOptions` data class.

#### Klarna Payments
- `KlarnaPaymentView` extends `KlarnaSingleComponent` and `KlarnaStandaloneComponent`.

#### Hybrid
- `KlarnaHybridSDK` extends `KlarnaMultiComponent`.

#### OSM
- `KlarnaOSMView` extends `KlarnaStandaloneComponent` and `KlarnaSingleComponent`.
##### Deprecations
- `KlarnaOSMEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaOSMRegion` is deprecated. Use `KlarnaRegion` instead.
- `KlarnaOSMTheme` is deprecated. Use `KlarnaTheme` instead.

#### Post Purchase
- `KlarnaPostPurchaseSDK` extends `KlarnaSingleComponent` and `KlarnaComponent`.
##### Deprecations
- `KlarnaPostPurchaseEnvironment` is deprecated. Use `KlarnaEnvironment` instead.
- `KlarnaPostPurchaseRegion` is deprecated. Use `KlarnaRegion` instead.

### [2.2.1] - 2022-08-19
- KlarnaOSMView has been made an open class.

### [2.2.0] - 2022-07-13
- Added Post Purchase standalone integration.

### [2.1.8] - 2022-06-02
- Added checks for WebView availability on the device.
- Allow verbose logs in debug mode.

### [2.1.7] - 2022-05-04
- Added support for opening Custom Tabs.

### [2.1.6] - 2022-03-23
- Added support for "One Klarna" payment flow.
- Minor bug fixes and improvements.

### [2.1.5] - 2022-02-11
- Updated application lifecycle implementation.
- Disabled some proguard optimizations.
- Changed proguard rules to apply obfuscation in consumer builds for some core parts.

### [2.1.4] - 2022-02-10
- Updated consumer proguard rules to prevent detected obfuscation issues.

### [2.1.3] - 2022-01-24
- Fixed an issue with opening external apps from internal browser.

### [2.1.2] - 2022-01-18
- Fixed an issue caused by render process crash in WebViews.

### [2.1.1] - 2021-12-03
- Fixed an issue while creating an instance of the SDK in background thread.

### [2.1.0] - 2021-11-12
- Improved support for 3DSecure flows in new markets.
- Added "returnURL" to the `KlarnaPaymentView` constructor parameters. [Read more.](https://docs.klarna.com/in-app/inapp-android-overview/klarna-payments-native/)
- Deprecated `KlarnaHybridSDKCallback` and added separate callbacks for events and fullscreen transitions. [Read more.](https://docs.klarna.com/in-app/inapp-android-overview/hybrid/)
- Internal optimization and improvements.

### [2.0.44] - 2021-07-23
- Change hardware requirements to be optional.

### [2.0.43] - 2021-07-13
- Improve transition animation to/from full screen content.
- Added support to open Klarna App in Android API level 30.

### [2.0.42] - 2021-06-28
- Improve internal parts using random integers and UUIDs.
- Fix string resources with special characters.

### [2.0.41] - 2021-06-14
- Replaced the default SDK variant to include all features just like the full variant. SDK variant supporting limited features with a smaller size will be the basic variant starting with this version.

### [2.0.40] - 2021-06-01
- Permissions & WebRTC support.
- Improved fullscreen implementation.

### [2.0.39] - 2021-05-25
- Reduce singletons for less memory usage.
- Improve internal error handling.

### [2.0.38] - 2021-05-12
- Support JS Bridge caching.
- Internal optimization and improvements.

### [2.0.37] - 2021-04-23
- Support for alternative resource endpoints

### [2.0.36] - 2021-04-15
- Fullscreen keyboard improvements.
- Updated analytic events.

### [2.0.35] - 2021-03-22
- Revert WebRTC support and fullscreen improvements.

### [2.0.34] - 2021-03-11
- :warning: **This version has some functionality issues**: Please use a newer version of the SDK. Future releases with new features will be cautiously checked to prevent these warnings.
- WebRTC support.
- Improved fullscreen implementation.

### [2.0.33] - 2021-02-18
- Internal optimizations.
- Fix obfuscation errors.

### [2.0.32] - 2021-01-13
- Internal optimizations.
- Updated SDK resources to prevent conflicts.
- Migrated dependencies to AndroidX.

### [2.0.31] - 2020-12-08
- Internal optimizations and stability improvements.

### [2.0.30] - 2020-12-03
- Overall stability improvements.

### [2.0.29] - 2020-11-04
- Fixed an issue with Post Purchase in Hybrid integration.
- Overall stability improvements.

### [2.0.28] - 2020-10-21
- Fix compile-time errors for some dependencies.

### [2.0.27] - 2020-10-20
- Minor stability improvements and bug fixes.

### [2.0.26] - 2020-10-19
- Overall stability improvements and bug fixes.

### [2.0.25] - 2020-09-03
- Upgraded the target Android SDK version to 30
- Enabled the file access for web views on Android SDK version 30 and above

### [2.0.24] - 2020-08-12
- Basic support for static On site marketing - beta version

### [2.0.23] - 2020-07-29
- Added callback API for merchant events from Klarna components inside a WebView.

### [2.0.22] - 2020-07-14
- Improved API for Java applications.
- Fixed an issue with base64 encoding.
- Improved thread safety for WebView implementations.

### [2.0.21] - 2020-06-17
- Fixed an issue with internal browser URL parameter and navigation.

### [2.0.20] - 2020-06-05
- Fixed an issue when the payment view was having blank white space.

### [2.0.19] - 2020-05-27
- Full artifact with card scan.
- Default/basic artifact without card scan.

### [2.0.18] - 2020-05-22
- Removed `READ_PHONE_STATE` permission usage and requirement.

### [2.0.17] - 2020-05-14
- Fixed an issue with the `Context` instance being used to move or create separate web views.

### [2.0.16] - 2020-04-09
- Fixed an issue with showing an error message inside the web view without hiding it.

### [2.0.15] - 2020-03-20
- Fix issue with showing fullscreen, primarily affecting post purchase widgets.

### [2.0.14] - 2020-02-21
- Overall performance and error handling improvements.

### [2.0.13] - 2020-02-17
- Fixed a crash with `JSONException` in `WrapperManager` when initializing the SDK.

### [2.0.12] - 2020-01-30
- Fixed a Proguard issue that would cause the payment view to not load.

### [2.0.11] - 2020-01-28
- Internal optimizations.

### [2.0.10] - 2020-01-14
- Enabled cookies for internal web views.

### [2.0.9] - 2019-12-19
- Renamed internal assets to avoid merchant app conflicts.

### [2.0.8] - 2019-12-05
- Improvements of internal web view identification towards Klarna components.

### [2.0.7] - 2019-11-27
- Fix rare crash with `NullPointerException` when invalid message is sent to the SDK.

### [2.0.6] - 2019-11-20
- Fix rare crash on certain Android devices with `JSONException` in `ConfigManager` when initializing the SDK.
- Improved link handling in fullscreen web views.
