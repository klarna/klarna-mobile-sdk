# Klarna Mobile SDK for iOS & Android
[![Cocoapods][cocoapods-image]][cocoapods-url]
[![Maven][maven-image]][maven-url]
![Platforms][platforms-image]
[![License][license-image]][license-url]
[![Developed at Klarna][klarna-image]][klarna-url]

Klarna Mobile SDK is the best and only official way to integrate Klarna products into your mobile app. 

We offer a seamless and straightforward way to 

* Render individual payment methods through **Klarna Payments**
* Present a fully-featured checkout through **Klarna Checkout**
* Give your customers a running start into the purchasing flow with **On-site Messaging**
* Let customers quickly and safely sign for your platform using their Klarna account via **Sign in with Klarna**

and so much more in a single package!

### SDK for Other Platforms

* [React Native](https://github.com/klarna/react-native-klarna-inapp-sdk)
* [Flutter](https://github.com/klarna/klarna-mobile-sdk-flutter)

## Overview

### Requirements
* iOS 10 or later.
* Android 4.4 or later.

### Documentations

* [Overview](https://docs.klarna.com/mobile-sdk/)
* [Android](https://docs.klarna.com/mobile-sdk/android/)
* [iOS](https://docs.klarna.com/mobile-sdk/ios/)
* [React Native](https://docs.klarna.com/mobile-sdk/reactnative/)

### Changelog
* [Android Changelog](https://github.com/klarna/klarna-mobile-sdk/blob/master/CHANGELOG.md#android)
* [iOS Changelog](https://github.com/klarna/klarna-mobile-sdk/blob/master/CHANGELOG.md#ios)

### Integrations

Klarna Mobile SDK offers two different integration types; standalone and WebView. Both of these types include multiple product integrations underneath and they are separated by the integration API offered by the SDK.

#### Standalone Integrations
Standalone integrations are product integrations offered with native API. Most of these integrations are fully native while there are some integrations that are using WebView internally. This means even if the integration is via a WebView you don't have to manage a WebView instance and instead you get a customized View or SDK instance that you can use directly with native APIs.

#### WebView Integrations
WebView integrations are solely based on WebViews and targeted to apps using WebViews in some parts of the app such as using Web checkout solutions in an app. These integrations either let integrator own a WebView or offer a WebView that's customized by the SDK and ready to be used out of the box.

#### Example Apps

##### Standalone Integration
* [iOS Klarna Payments Example App](https://github.com/klarna/kp-ios-example-app)
* [Android Klarna Payments Example App](https://github.com/klarna/kp-android-example-app)

##### WebView Integration
* [iOS Hybrid Example App](https://github.com/klarna/HybridInAppSDKDemo)
* [Android Hybrid Example App](https://github.com/klarna/hybrid-android-example-app)

## Support

If you are having any issues using the SDK in your project or if you think that something is wrong with the SDK itself, please follow our [support guide](https://github.com/klarna/klarna-mobile-sdk/blob/master/SUPPORT.md).

## Contribution

If you want to contribute to this project please follow our [contribution guide](https://github.com/klarna/klarna-mobile-sdk/blob/master/CONTRIBUTING.md).

## License

This project is licensed under 
[Apache License, Version 2.0](https://github.com/klarna/klarna-mobile-sdk/blob/master/LICENSE).

<!-- Markdown images & links -->
[cocoapods-image]: https://img.shields.io/cocoapods/v/KlarnaMobileSDK.svg?style=flat-square
[cocoapods-url]: https://docs.klarna.com/mobile-sdk/ios/get-started/#adding-the-sdk-cocoapods
[maven-image]: https://img.shields.io/maven-metadata/v/https/x.klarnacdn.net/mobile-sdk/com/klarna/mobile/sdk/maven-metadata.xml.svg?style=flat-square
[maven-url]: https://docs.klarna.com/mobile-sdk/android/get-started/#adding-the-sdk-as-a-dependency
[platforms-image]: https://img.shields.io/badge/platform-ios%20%7C%20android-lightgrey?style=flat-square
[license-image]: https://img.shields.io/github/license/klarna/klarna-mobile-sdk?style=flat-square
[license-url]: https://github.com/klarna/klarna-mobile-sdk/blob/master/LICENSE
[klarna-image]: https://img.shields.io/badge/%20-Developed%20at%20Klarna-black?labelColor=ffb3c7&style=flat-square&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAOCAYAAAAmL5yKAAAAAXNSR0IArs4c6QAAAIRlWElmTU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAALQAAAAAQAAAtAAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAABCgAwAEAAAAAQAAAA4AAAAA0LMKiwAAAAlwSFlzAABuugAAbroB1t6xFwAAAVlpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KTMInWQAAAVBJREFUKBVtkz0vREEUhsdXgo5qJXohkUgQ0fgFNFpR2V5ClP6CQu9PiB6lEL1I7B9A4/treZ47c252s97k2ffMmZkz5869m1JKL/AFbzAHaiRbmsIf4BdaMAZqMFsOXNxXkroKbxCPV5l8yHOJLVipn9/vEreLa7FguSN3S2ynA/ATeQuI8tTY6OOY34DQaQnq9mPCDtxoBwuRxPfAvPMWnARlB12KAi6eLTPruOOP4gcl33O6+Sjgc83DJkRH+h2MgorLzaPy68W48BG2S+xYnmAa1L+nOxEduMH3fgjGFvZeVkANZau68B6CrgJxWosFFpF7iG+h5wKZqwt42qIJtARu/ix+gqsosEq8D35o6R3c7OL4lAnTDljEe9B3Qa2BYzmHemDCt6Diwo6JY7E+A82OnN9HuoBruAQvUQ1nSxP4GVzBDRyBfygf6RW2/gD3NmEv+K/DZgAAAABJRU5ErkJggg==
[klarna-url]: https://github.com/klarna