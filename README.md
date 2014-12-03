<p align="center" >
  <img src="http://www.oktana.io/drive/okty-salesforce-ios.png" alt="OKTY-Salesforce-iOS" title="OKTY-Salesforce-iOS">
</p>

A neat library manager to connect iOS with Salesforce
OKTY-Salesforce-iOS, a neat library manager developed by Oktana, to connect native iOS apps with [Salesforce](https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Distribution).


##Features
- Makes easy to develop new apps
- Integrates new features of Salesforce
- Automatically sets-up a project

====================

##Getting Started

Download OKTY-Salesforce-iOS and try out the included iPhone example apps
Read the "Getting Started" guide, FAQ, or other articles on the Wiki
Check out the documentation for a comprehensive look at all of the APIs available in OKTY-Salesforce-iOS

##Communication

- If you need help, use Stack Overflow. (Tag ‘OKTY-Salesforce-iOS’)
- If you'd like to ask a general question, use Stack Overflow.
- If you found a bug, and can provide steps to reliably reproduce it, open an issue.
- If you have a feature request, open an issue.
- If you want to contribute, submit a pull request.

*Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like Salesforce in your projects. See the "Getting Started" guide for more information.

###Podfile
```ruby
platform :ios, '7.0'
pod "OKTY-Salesforce-iOS"
```

###Requirements
iOS 7.0 

### Libraries and Resources

Adds the Salesforce Mobile SDK libraries.
- openssl 
- sqlcipher 
- SalesforceCommonUtils 
- SalesforceRestApiSDK
- SalesforceNetworkSDK 
- MKNetworkKit
- SalesforceOAuth
- SalesforceSDKCore
- SalesforceSecurity

Adds the dependency libraries.

- libxml2.dylib
- libz.dylib
- UIKit.framework
- ImageIO.framework
- Foundation.framework
- CFNetwork.framework
- CoreData.framework
- CoreGraphics.framework
- MessageUI.framework
- MobileCoreServices.framework
- QuartzCore.framework
- Security.framework
- SystemConfiguration.framework

Adds the resource bundle:

- SalesforceSDKResources.bundle

### [Example](https://github.com/Oktana/OKTY-Salesforce-iOS/tree/master/ExampleOktyPod) 

- Import headers: `SFUserAccountManager.h`, `SFAuthenticationManager.h`

- Set your Connected App Consumer Key

    `[SFUserAccountManager sharedInstance].oauthClientId = @"3MVG9Iu66FKeHhINkB1l7xt7kR8czFcCTUhgoA8Ol2Ltf1eYHOU4SqQRSEitYFDUpqRWcoQ2.dBv_a1Dyu5xa";`

- Set your Connected App's Callback URL

    `[SFUserAccountManager sharedInstance].oauthCompletionUrl = @"testsfdc:///mobilesdk/detect/oauth/done";`

- Set the OAuth scopes that your Connected App will request

    `[SFUserAccountManager sharedInstance].scopes = [NSSet setWithObjects:@"web", @"api", nil];`

- Launch authentication

    ```
[[SFAuthenticationManager sharedManager]
    loginWithCompletion:(SFOAuthFlowSuccessCallbackBlock)^(SFOAuthInfo *info) {
        NSLog(@"Authentication Done");
    }
    failure:(SFOAuthFlowFailureCallbackBlock)^(SFOAuthInfo *info, NSError *error) {
        NSLog(@"Authentication Failed");
       [[SFAuthenticationManager sharedManager] logout];
    }
];`
    ```