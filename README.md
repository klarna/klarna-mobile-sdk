# Klarna Mobile SDK for iOS & Android

# iOS Integration 

Pleased see document provided directly to you.

###### Klarna Payments for iOS
[Native Integration Guide ](https://github.com/klarna/klarna-mobile-sdk/blob/master/KlarnaPaymentsiOS.md)

[Documentation for Swift & Objective-C](http://htmlpreview.github.io/?https://github.com/klarna/klarna-mobile-sdk/blob/master/docs/ios/index.html)


# Android Integration 
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
    implementation ('com.klarna.mobile:sdk:1.0.2')
    ```

