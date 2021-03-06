<p align="center" >
  <img src="http://www.oktana.io/drive/okty-salesforce-ios-header.png" alt="OKTY-Salesforce-iOS" title="OKTY-Salesforce-iOS">
</p>

OKTY-Salesforce-iOS, a library manager to connect native iOS apps with [Salesforce](https://www.salesforce.com).


##Features
- Makes it easy to develop new apps.
- Updates continuously the Salesforce libraries.
- Automatically set-s up Objective-C and Swift projects.

##Installation
- Install [Ruby](https://www.ruby-lang.org/en/installation/).
- Install [CocoaPods](http://cocoapods.org/).

`CocoaPods is a dependency manager for Objective-C and Swift, which automates and simplifies the process of using 3rd-party libraries like `[SalesforceMobileSDK](https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Distribution) `in your projects.`
- Write on the **Podfile**:

    ```ruby 
        pod "OKTY-Salesforce-iOS" 
    ```

##Getting Started

Download OKTY-Salesforce-iOS and try out the included iPhone [example apps](https://github.com/Oktana/OKTY-Salesforce-iOS/tree/master/ExampleOktyPod).

To get further information about Salesforce read the following content: 
- [Salesforce mobile sdk (PDF)](https://raw.githubusercontent.com/forcedotcom/SalesforceMobileSDK-Shared/master/doc/mobile_sdk.pdf) 
- [Connected Apps](https://developer.salesforce.com/page/Connected_Apps)

##Communication

- If you **need help**, [send us a message](mailto: support@oktana.io). Please include ‘OKTY-Salesforce-iOS’ in the subject .
- If you **found a bug**, and can provide steps to reliably reproduce it, [open an issue](mailto: support@oktana.io).
- If you **have a feature request**, [open an issue](mailto: support@oktana.io).
- If you **want to contribute**, submit a pull request. 

### Libraries and Resources

Salesforce Mobile SDK:
- openssl 
- sqlcipher 
- SalesforceCommonUtils 
- SalesforceRestApiSDK
- SalesforceNetworkSDK 
- MKNetworkKit
- SalesforceOAuth
- SalesforceSDKCore
- SalesforceSecurity

Dependency libraries:
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

Resources bundle:
- SalesforceSDKResources.bundle
- Settings.bundle

### Example

- Import headers: `SFUserAccountManager.h`, `SFAuthenticationManager.h`

- Set your Connected App Consumer Key.

    `[SFUserAccountManager sharedInstance].oauthClientId = @"3MVG9Iu66FKeHhINkB1l7xt7kR8czFcCTUhgoA8Ol2Ltf1eYHOU4SqQRSEitYFDUpqRWcoQ2.dBv_a1Dyu5xa";`

- Set your Connected App's Callback URL.

    `[SFUserAccountManager sharedInstance].oauthCompletionUrl = @"testsfdc:///mobilesdk/detect/oauth/done";`

- Set the OAuth scopes that your Connected App will request.

    `[SFUserAccountManager sharedInstance].scopes = [NSSet setWithObjects:@"web", @"api", nil];`

- Launch authentication.

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
- [Download another example](https://github.com/Oktana/OKTY-Salesforce-iOS/tree/master/ExampleOktyPod).

###License

Copyright (c) 2014 Oktana

Permission is hereby granted, free of charge, to any person obtaining a 
copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the 
Software is furnished to do so, subject to the following conditions:


The above copyright notice and this permission notice shall be included 
in all copies or substantial portions of the Software.


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
THE SOFTWARE.


####[SalesforceMobileSDK-iOS LICENSE](https://github.com/forcedotcom/SalesforceMobileSDK-iOS/blob/master/LICENSE.md)

