# Klarna Mobile SDK - Klarna Payments for Android


## Introduction

The SDK is a native integration to render Klarna Payments on Android. Merchants can offer customers Klarna's payment options in their mobile apps easily and safely.

This guide is a technical introduction to Klarna Payments for Android. It describes what the Klarna Payments for Android is, what it does, and how merchants can integrate it into their apps. The SDK allows merchants to integrate a native payments experience into their apps, and one way merchants may present Klarna Payments where the SDK manages the payment view which merchants embed into their apps UI layout and handle the initialization, loading, authorization, finalization, sizing and errors.

**Glossary:**

| Term | Description |
| --- | --- |
| Klarna Payments | Klarna Payments (KP) is Klarna's solution for providing merchants with standalone payment methods the user can choose from.
| Payment Method Category | KP renders categories of payment methods, like "Slice It", "Pay Now" and "Pay Later".
| Client Token | A token identifying an order session. |
| Authorization Token | A token identifying an authorized order. Needed to complete the order. |
| Authorization | Customer credit assessment before completing an order. |
| Reauthorization | New credit assessment if the order details have changed. |
| Finalization | An additional assessment required with some payment methods.  |

**Links:**

An example Android app to demonstrate Klarna Mobile SDK for Klarna Payments usage
https://github.com/klarna/kp-android-example-app

Klarna Developers
https://developers.klarna.com/en/gb/kco-v3/klarna-payment-methods
(United Kingdom, select your country in the upper right corner)

Klarna API Reference
https://developers.klarna.com/api/#payments-api


## Setup

The Klarna Mobile SDK for Android is available in our Maven Repository, perform the following steps to add it to your application:

1. Edit your application level `build.gradle` file and add the following repository to your `repositories` section:

    ```gradle
    repositories {
        ....
        maven {
            url 'https://x.klarnacdn.net/mobile-sdk/'
        }
    }
    ```

2. Add a `implementation` dependency for the library:

    ```gradle
    implementation ('com.klarna.mobile:sdk:1.1.6')
    ```

3. Register an `intent-filter` for the `Activity` hosting the checkout in your `AndroidManifest.xml` to support return URLs:

    ```xml
    <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />

        <data android:scheme="<your-custom-scheme>" />
        <data android:host="<your-custom-host>" />
    </intent-filter>
    ```

### Note:

The hosting `Activity` should be using `launchMode` of `singleTask` or `singleTop` to prevent a new instance from being created when returning from an external application.


## Initialization

### Setup
In your `Application` class, override `onCreate` and make sure you call `KlarnaPaymentsSDK.initialize(this)` in order to properly initialize the SDK.

### Rendering a PaymentView
To render a payment method, create an instance of `PaymentView` either via XML or directly in code and supply it with the `client-token` you received when making the order and the `return-url` defined in your `AndroidManifest.xml`. You must also supply a instance of the `KlarnaPaymentViewCallback` in order to receive events from the payment process and the `payment method category` you wish to render.

#### Code
```java
final PaymentView paymentView = new PaymentView(this, KlarnaPaymentCategory.PAY_LATER, callback);
```

#### XML
```java
final PaymentView paymentView = findViewById(R.id.paymentView);
paymentView.setCategory(KlarnaPaymentCategory.PAY_LATER);
paymentView.registerPaymentViewCallback(callback);
```
#### Initialize
After setup you must call `initialize` with the token and returnURL.

````java
paymentView.initialize(token, returnUrl);
````

If successful `onInitialized` will be called in the callback supplied.

#### Load

When you are ready to display the `PaymentView` simply call `load`, supplying an optional string with order data to update the session formatted as JSON.

````java
paymentView.load(null);
````

If successful `onLoaded` will be called in the callback supplied.

#### Authorizing

When you are ready to authorize the payment, simply call `authorize`, supplying an optional string with order data to update the session formatted as JSON and if auto-finalization should be turned off for direct bank transfer payment method.

````java
paymentView.authorize(false, null);
````

If successful `onAuthorized` will be called in the callback supplied.


#### Finalizing
If you need to finalize the order, simply call `finalize`, supplying an optional string with order data to update the session formatted as JSON

````java
paymentView.finalize(null);
````

If successful `onFinalized` will be called in the callback supplied.

## Error handling
If at any point an error ocurrs, `onErrorOccurred` will be called in the supplied callback with details about the issue.



<br/>
