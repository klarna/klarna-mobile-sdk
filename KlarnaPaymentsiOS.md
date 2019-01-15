# Klarna Mobile SDK - Klarna Payments for iOS


## Introduction

The SDK is a native integration to render Klarna Payments on iOS. Merchants can offer customers Klarna's payment options in their mobile apps easily and safely.

This guide is a technical introduction to Klarna Payments for iOS. It describes what the Klarna Payments for iOS is, what it does, and how merchants can integrate it into their apps. The SDK allows merchants to integrate a native payments experience into their apps, and one way merchants may present Klarna Payments where the SDK manages the payment view which merchants embed into their apps UI layout and handle the initialization, loading, authorization, finalization, sizing and errors.

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

An example iOS app to demonstrate Klarna Mobile SDK for Klarna Payments usage
https://github.com/klarna/kp-ios-example-app

Klarna Developers
https://developers.klarna.com/en/gb/kco-v3/klarna-payment-methods
(United Kingdom, select your country in the upper right corner)

Klarna API Reference
https://developers.klarna.com/api/#payments-api


## Setup

* Import the framework and get started!

    ```swift
    import KlarnaMobileSDK
    ```


## Integration Steps

1. Create a credit session through Klarna's Payments API, you are then provided with a client token and one or more payment method categories to authorize the session with. See the documentation on [Klarna Developers](https://developers.klarna.com/api/#payments-api-create-a-new-credit-session) for further info on how this can be done.

2. Then create a `KlarnaPaymentView` using the client token and a payment method category identifier. Each payment view corresponds to one of Klarna's payment options a user can choose to pay with.

    ```swift
    let paymentView = KlarnaPaymentView(clientToken: "my-token", category: "pay-later", returnUrl: "app-schema://schema", delegate: myDelegate)
    ```

    Add this view to your application in whichever way works best with your application struture.

3. If the payment view has been successfuly initialized (you'll be notified through your delegate), you can load the payment method into the view when you're ready.

    ```swift
    // in your KlarnaPaymentViewDelegate
    func klarnaPaymentViewInitialized(_ paymentView: KlarnaPaymentView) {
        paymentView.load()
    }
    ```

4. You'll begin to get calls to your delegate's `resizedToHeight` function as the content in the payment view changes and resizes (e.g. when the user interacts with it). As we don't know how you integrated the view into your application, we delegate resizing the view to you:

    ```swift
    // e.g. if using constraints
    func klarnaPaymentView(_ paymentView: KlarnaPaymentView, resizedToHeight height: CGFloat) {
        paymentViewHeightConstraint.constant = height
    }
    ```

5. It's also up to you to track when a user selects a specific payment view.

6. When a user selects one of the Klarna's payment views and then taps "continue" (or a similar button) in your application, it's time to authorize the session.

    Call `paymentView.authorize(autoFinalize:, jsonData:)` to authorize the session.

    Your delegate's `authorizedWithToken` function will be called with the results of the approval.

    ```swift
    func klarnaPaymentView(_ paymentView: KlarnaPaymentView, approved: Bool?, authorizedWithToken authToken: String?, finalizeRequired: Bool?) {

        // if the session is approved, `approved` will be true and you'll get an auth token
        // if the session needs to be finalized, `finalizeRequired` will be true and the token will be nil

    }
    ```

    6.1. If the session details change after the session has been authorized, call `paymentView.reauthorize(jsonData:)`.

    Reauthorization incurs in a network request as Klarna has to process the session's changes, so we recommend you only call this after the user is done performing changes to their session.

    As with authorization, your delegate's `reauthorizedWithToken` function will be called with the results of the reauthorization.

    6.2. Similarly, if the session needs an additional step to complete the authorization, call `paymentView.finalise()`. Please note that this function is called `finalise()` with *s*, and not `finalize()` with *z* (as in the Klarna JS Payments Library) to avoid a conflict with `NSObject` function of the same name. 

    As with authorization, your delegate's `finalizedWithToken` function will be called with the results.

7. Once you have an authorization token, you can create an order via your backend through Klarna's Payments API. See [Klarna Developers](https://developers.klarna.com/api/#payments-api-create-a-new-order) for more info.

If an error occurred at any step. The `KlarnaPaymentViewDelegate`s `klarnaPaymentView(_ paymentView:, failedWithError error:)` function will provide you with error information describing what happened and whether it’s recoverable (e.g. an e-mail address is invalid).


### App Schema

Some payment methods require authorization through third-party applications. These will return the user to your application upon completion, but to do that you need to supply the app URL that should be used for returning.

You can declare this in the your application's Info.plist.

There do not need to be any special handlers on application load for that url, our only requirement is that the user is returned to your application from the third-party application.


<br/>
