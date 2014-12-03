#
# Be sure to run `pod lib lint OKTY-Salesforce-iOS.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "OKTY-Salesforce-iOS"
    s.version          = "0.1.0"
    s.summary          = "A neat library manager to connect iOS with Salesforce."
    s.description      = <<-DESC
                            A neat library manager to connect iOS with Salesforce.

                            OKTY-Salesforce-iOS, a neat library manager developed by Oktana, to connect native iOS apps with Salesforce.

                            Features
                            * Makes easy to develop new apps
                            * Integrates new features of Salesforce
                            * Automatically sets-up a project
                       DESC
    s.homepage         = "https://github.com/Oktana/OKTY-Salesforce-iOS"
    s.license          = 'MIT'
    s.author           = { "Mathias" => "mathias@oktana.io" }
    s.source           = { :git => "https://github.com/Oktana/OKTY-Salesforce-iOS.git"}
    s.platform         = :ios, '7.0'
    s.requires_arc     = true

    s.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/*'

    s.vendored_libraries = "SalesforceMobileSDK-iOS-Distribution/libSalesforceCommonUtils.a", "SalesforceMobileSDK-iOS-Distribution/libMKNetworkKit-iOS.a", "SalesforceMobileSDK-iOS-Distribution/libSalesforceNetworkSDK.a", "SalesforceMobileSDK-iOS-Distribution/libSalesforceOAuth.a", "SalesforceMobileSDK-iOS-Distribution/libSalesforceSDKCore.a", "SalesforceMobileSDK-iOS-Distribution/libSalesforceSecurity.a","SalesforceMobileSDK-iOS-Distribution/libSalesforceRestAPI.a", "SalesforceMobileSDK-iOS-Distribution/libcrypto.a", "SalesforceMobileSDK-iOS-Distribution/libsqlcipher.a", "SalesforceMobileSDK-iOS-Distribution/libssl.a"

    s.frameworks = 'UIKit', 'ImageIO', 'Foundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'MessageUI', 'MobileCoreServices', 'QuartzCore', 'Security', 'SystemConfiguration'

    s.libraries = 'sqlite3', 'xml2', 'z'
    s.resources = 'SalesforceMobileSDK-iOS-Distribution/SalesforceSDKResources.bundle', 'SalesforceMobileSDK-iOS-Distribution/Settings.bundle'

    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'OTHER_LDFLAGS' => '-all_load', 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

    s.subspec 'CommonUtils' do |csu|
        csu.header_dir = "SalesforceCommonUtils"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceCommonUtils/*.h'
    end
    
    s.subspec 'MKNetworkKit' do |csu|
        csu.header_dir = "MKNetworkKit-iOS"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/MKNetworkKit-iOS/*.h'
    end

    s.subspec 'Network' do |csu|
        csu.header_dir = "SalesforceNetworkSDK"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceNetworkSDK/*.h'
    end

    s.subspec 'OAuth' do |csu|
        csu.header_dir = "SalesforceOAuth"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceOAuth/*.h'
    end

    s.subspec 'RestAPI' do |csu|
        csu.header_dir = "SalesforceRestAPI"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceRestAPI/*.h'
    end

    s.subspec 'SDKCore' do |csu|
        csu.header_dir = "SalesforceSDKCore"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceSDKCore/*.h'
    end

    s.subspec 'Security' do |csu|
        csu.header_dir = "SalesforceSecurity"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/Headers/SalesforceSecurity/*.h'
    end

    s.subspec 'openssl' do |csu|
        csu.header_dir = "openssl"
        csu.source_files = 'SalesforceMobileSDK-iOS-Distribution/openssl/*.h'
    end

    s.prepare_command = "./config"

end
