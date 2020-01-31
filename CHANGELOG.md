# Changelog
All notable changes to Klarna Mobile SDK will be documented in this file.

## iOS
Future releases will be documented in this section.

## Android
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
