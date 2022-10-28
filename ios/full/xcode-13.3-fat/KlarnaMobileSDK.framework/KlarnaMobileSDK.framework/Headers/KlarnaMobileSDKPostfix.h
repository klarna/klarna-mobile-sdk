//
//  KlarnaMobileSDKPostfix.h
//  KlarnaMobileSDK
//
//  Created by Gabriel Banfalvi on 2022-09-21.
//  Copyright © 2022 Klarna Bank AB. All rights reserved.
//

#ifndef KlarnaMobileSDKPostfix_h
#define KlarnaMobileSDKPostfix_h

#import <KlarnaMobileSDK/KlarnaMobileSDK-Swift.h>

typedef NSString KlarnaErrorName;
typedef KlarnaError KlarnaMobileSDKError;

typedef NSString KlarnaEventName;
typedef NSString KlarnaEventParamKey;

typedef NSString KlarnaPaymentAction;
typedef NSString KlarnaPaymentMethodCategory;
typedef NSString KlarnaPaymentErrorName;

typedef KlarnaPaymentError KlarnaPaymentsError;

typedef NSString KlarnaOSMErrorName;
typedef KlarnaTheme KlarnaOSMTheme;
typedef KlarnaEnvironment KlarnaOSMEnvironment;
typedef KlarnaRegion KlarnaOSMRegion;

typedef void (^RenderResult)(KlarnaError *);
typedef NSString KlarnaPostPurchaseErrorName;
typedef KlarnaRegion KlarnaPostPurchaseRegion;
typedef KlarnaEnvironment KlarnaPostPurchaseEnvironment;

#endif /* KlarnaMobileSDKPostfix_h */
