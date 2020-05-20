# Changelog
All notable changes to Klarna In-App SDK will be documented in this file.

## iOS
Future releases will be documented in this section.

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
