# Migration Guide for Klarna In-App SDK

## Migrating from 1.x.x to 2.x.x - Overview
In version 2.0.0 changes were made to the API to make Klarna In-App SDK easier to use and faster to integrate. Class and method names were changed to be more self explanatory and a step in the integration process was removed to make it even faster and simpler. It's recommended to migrate as soon as possible although the old API will be supported for a while.

Below are the changes required when migrating an existing application from Klarna In-App SDK 1.x.x to 2.x.x.

## iOS
#### Shared API for both Native & Hybrid
`KlarnaMSDK` which provides a method to set the logging level has gone through the following changes:

* `KlarnaMSDK` has been renamed to `KlarnaMobileSDKCommon`.
* A new function to retrieve a device identifier has been added, `KlarnaMobileSDKCommon.deviceIdentifier()`.

---

### Native
The following API classes, interfaces and methods has been changed:

##### `KlarnaPaymentView`

`KlarnaPaymentView(clientToken: String, category: String, returnUrl: String, delegate: KlarnaPaymentViewDelegate)` only takes payment category and listener: `KlarnaPaymentView(category: String, eventListener: KlarnaPaymentEventListener)`.

##### `KlarnaPaymentViewDelegate`

* `KlarnaPaymentViewDelegate` has been renamed to `KlarnaPaymentEventListener`.
* `KlarnaPaymentViewDelegate.klarnaPaymentView(_ paymentView: KlarnaPaymentView, approved: Bool?, authorizedWithToken authToken: String?, finalizeRequired: Bool?)` has been renamed to `KlarnaPaymentEventListener.klarnaAuthorized(_ paymentView: KlarnaPaymentView, approved: Bool?, authToken: String?, finalizeRequired: Bool?)`.
* `KlarnaPaymentViewDelegate.klarnaPaymentView(_ paymentView: KlarnaPaymentView, approved: Bool?, reauthorizedWithToken authToken: String?)` has been renamed to `KlarnaPaymentEventListener.klarnaReauthorized(_ paymentView: KlarnaPaymentView, approved: Bool?, authToken: String?)`.
* `KlarnaPaymentViewDelegate.klarnaPaymentView(_ paymentView: KlarnaPaymentView, approved: Bool?, finalizedWithToken authToken: String?)` has been renamed to `KlarnaPaymentEventListener.klarnaFinalized(_ paymentView: KlarnaPaymentView, approved: Bool?, authToken: String?)`.
* `KlarnaPaymentViewDelegate.klarnaPaymentView(_ paymentView: KlarnaPaymentView, resizedToHeight height: CGFloat)` has been renamed to `KlarnaPaymentEventListener.klarnaResized(_ paymentView: KlarnaPaymentView, newHeight: CGFloat)`.
* `KlarnaPaymetViewDelegate.klarnaPaymentView(_ paymentView: KlarnaPaymentView, failedWithError error: KlarnaPaymentsError)` has been renamed to `KlarnaPaymentEventListener.klarnaFailed(_ paymentView: KlarnaPaymentView, error: KlarnaPaymentsSDKError)`.

##### `KlarnaPaymentsError`
`KlarnaPaymentsError` has been changed to `KlarnaPaymentError`.

---

### Hybrid
The following API classes, interfaces and methods has been changed:

##### `KlarnaHybridSDK`
* `KlarnaHybridSDK(webView: KlarnaWebView, returnUrl: URL, eventListener: KlarnaHybridSDKEventListener)` no longer takes a web view: `KlarnaHybridSDK(returnUrl: String, eventListener: KlarnaHybridEventListener)`. The web view should instead be provided with the newly added function `addWebView(_ webView: KlarnaWebView)`.
* `klarnaHybridSDK.deviceIdentifier()` has been removed and is instead available in `KlarnaMobileSDKCommon`.
* `klarnaHybridSDK.handleDeeplink(withUrl url: URL, options: [UIApplication.OpenURLOptionsKey : Any])` has been removed completely.
* `klarnaHybridSDK.addWebView(_ webView: KlarnaWebView)` has been added.

##### `KlarnaHybridSDKEventListener`
* `KlarnaHybridSDKEventListener` has been renamed to `KlarnaHybridEventListener`.
* `klarnaHybridSDKWillShowFullscreen(inWebView webView: KlarnaWebView, completion: @escaping () -> Void)` has been renamed to `klarnaWillShowFullscreen(inWebView: KlarnaWebView, completionHandler: @escaping () -> Void)`.
* `klarnaHybridSDKDidShowFullscreen(inWebView webView: KlarnaWebView, completion: @escaping () -> Void)` has been renamed to `klarnaDidShowFullscreen(_ webView: KlarnaWebView, completionHandler: @escaping () -> Void)`.
* `klarnaHybridSDKWillHideFullscreen(inWebView webView: KlarnaWebView, completion: @escaping () -> Void)` has been renamed to `klarnaWillHideFullscreen(_ webView: KlarnaWebView, completionHandler: @escaping () -> Void)`.
* `klarnaHybridSDKDidHideFullscreen(inWebView webView: KlarnaWebView, completion: @escaping () -> Void)` has been renamed to `klarnaDidHideFullscreen(_ webView: KlarnaWebView, completionHandler: @escaping () -> Void)`.
* `klarnaHybridSDKFailed(inWebView webView: KlarnaWebView, withError error: KlarnaMobileSDKError)` has been renamed to `klarnaFailed(_ webView: KlarnaWebView, error: KlarnaMobileSDKError)`.

## Android

>**Note:** The code samples below are in Kotlin but the same changes applies if you have a Java application.

#### Initializing the SDK
The SDK no longer requires you to pass the application context. If you use the Hybrid implementation you'll notice that the constructor has changed and if you're using the Native implementation you no longer have to initialize the SDK, all you have to do is use the payment view directly. You can read more about these changes in the sections below.

#### New shared class for both Native & Hybrid
`KlarnaMobileSDKCommon` is a new shared class that provides an API to:

* Enable or disable logging with `KlarnaMobileSDKCommon.setLoggingLevel(loggingLevel: KlarnaLoggingLevel)`.
* Get an identifier with `KlarnaMobileSDKCommon.deviceIdentifier(application: Application): String`.

You can use this class regardless of which implementation you use, it supports both Native and Hybrid.

---

### Native
The following API classes, interfaces and methods has been changed:

##### `KlarnaPaymentsSDK`
`KlarnaPaymentsSDK` has been removed as it is no longer needed. The SDK will be initialized when the new `KlarnaPaymentView` is initialized.

##### `PaymentView`
`PaymentView` has changed to `KlarnaPaymentView`.

##### `KlarnaPaymentViewCallBack`

* `KlarnaPaymentViewCallBack` has changed to `KlarnaPaymentViewCallback`.
* `KlarnaPaymentViewCallBack.onInitialized(view: PaymentView)` now takes a `KlarnaPaymentView` as its argument: `KlarnaPaymentViewCallback.onInitialized(view: KlarnaPaymentView)`.
* `KlarnaPaymentViewCallBack.onLoaded(view: PaymentView)` now takes a `KlarnaPaymentView` as its argument: `KlarnaPaymentViewCallback.onLoaded(view: KlarnaPaymentView)`.
* `KlarnaPaymentViewCallBack.onAuthorized(view: PaymentView, approved: Boolean, authToken: String?, finalizedRequired: Boolean?)` now takes a `KlarnaPaymentView` as its first argument: `KlarnaPaymentViewCallback.onAuthorized(view: KlarnaPaymentView, approved: Boolean, authToken: String?, finalizedRequired: Boolean?)`.
* `KlarnaPaymentViewCallBack.onReauthorized(view: PaymentView, approved: Boolean, authToken: String?)` now takes a `KlarnaPaymentView` as its first argument: `KlarnaPaymentViewCallback.onReauthorized(view: KlarnaPaymentView, approved: Boolean, authToken: String?)`.
* `KlarnaPaymentViewCallBack.onFinalized(view: PaymentView, approved: Boolean, authToken: String?)` now takes a `KlarnaPaymentView` as its first argument: `KlarnaPaymentViewCallback.onFinalized(view: KlarnaPaymentView, approved: Boolean, authToken: String?)`
* `KlarnaPaymentViewCallBack.onErrorOccurred(view: PaymentView, error: KlarnaPaymentError)` now takes a `KlarnaPaymentView` as its first argument and a `KlarnaPaymentsSDKError` as its second argument: `KlarnaPaymentViewCallback.onErrorOccurred(view: KlarnaPaymentView, error: KlarnaPaymentsSDKError)`

##### `KlarnaPaymentError`

`KlarnaPaymentError` has been changed to `KlarnaPaymentsSDKError`.

---

### Hybrid
The following API classes, interfaces and methods has been changed:

##### `KlarnaHybridSDK`

* `KlarnaHybridSDK` is no longer invoked with the method `invoke(app: Application, webView: WebView, returnURL: URL, eventListener: KlarnaHybridSDKEventListener)` but an instance should be created using the new constructor `constructor(returnURL: String, callback: KlarnaHybridSDKCallback)`. Note that you no longer have to pass the application and that the `WebView` should be passed to the SDK with the new method `addWebView(webView: WebView)` instead.
* `klarnaHybridSDK.shouldFollowNavigation(url: URL)` now takes a `String` as it's argument instead of `URL`; `klarnaHybridSDK.shouldFollowNavigation(url: String)`.
* `klarnaHybridSDK.addWebView(webView: WebView)` has been added.
* `klarnaHybridSDK.deviceIdentifier(application: Application): String` has been removed and is instead available in the new class `KlarnaMobileSDKCommon`.
* `klarnaHybridSDK.handleDeeplink(uri: URI)` has been removed completely.

##### `KlarnaHybridSDKEventListener`

* `KlarnaHybridSDKEventListener` has changed to `KlarnaHybridSDKCallback`.
* `KlarnaHybridSDKWillShowFullscreen(webView: WebView, completion: () -> Unit)` has changed to `willShowFullscreenContent(webView: WebView, onReady: () -> Unit)`.
* `KlarnaHybridSDKDidShowFullscreen(webView: WebView, completion: () -> Unit)` has changed to `didShowFullscreenContent(webView: WebView, onReady: () -> Unit)`.
* `KlarnaHybridSDKWillHideFullscreen(webView: WebView, completion: () -> Unit)` has changed to `willHideFullscreenContent(webView: WebView, onReady: () -> Unit)`.
* `KlarnaHybridSDKDidHideFullscreen(webView: WebView, completion: () -> Unit)` has changed to `didHideFullscreenContent(webView: WebView, onReady: () -> Unit)`.
* `KlarnaHybridSDKFailed(webView: WebView, error: KlarnaMobileSDKError)` has changed to `onErrorOccurred(webView: WebView, error: KlarnaMobileSDKError)`.

##### `KlarnaMobileSDKError`
The parameter `ifFatal` has been changed to `isFatal`. The new class signature has therefore changed from `KlarnaMobileSDKError(name: String, message: String, ifFatal: Boolean)` to `KlarnaMobileSDKError(name: String, message: String, isFatal: Boolean)`.
