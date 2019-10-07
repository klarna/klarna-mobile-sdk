Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.0.7"
    s.summary      = "Klarna Mobile SDK for iOS"
    s.description  = <<-DESC
    Klarna Mobile SDK for iOS apps.
    DESC
    s.homepage     = "https://github.com/klarna/klarna-mobile-sdk.git"
    s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
    s.author       = { "Klarna Mobile SDK Team" => "mobile.sdk@klarna.com" }
    s.platform     = :ios, "10.0"
    s.source       = { :git => "https://github.com/klarna/klarna-mobile-sdk.git", :tag => s.version.to_s }
    s.requires_arc = true
    s.swift_version = "5.0"

    
    s.subspec 'xcode112beta1-swift51-fat' do |sb|
        sb.source_files = "ios/xcode112beta1-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode112beta1-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode112beta1-swift51-fat/KlarnaMobileSDK.framework"
    end        
    
    s.subspec 'xcode111gm1-swift51-fat' do |sb|
        sb.source_files = "ios/xcode111gm1-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode111gm1-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode111gm1-swift51-fat/KlarnaMobileSDK.framework"
    end        
    
    s.subspec 'xcode103-swift5-fat' do |sb|
        sb.source_files = "ios/xcode103-swift5-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode103-swift5-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode103-swift5-fat/KlarnaMobileSDK.framework"
    end        
    

    s.default_subspec = 'xcode103-swift5-fat'
end
