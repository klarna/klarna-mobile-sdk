Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.0.3"
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

    
    s.subspec 'xcode102-swift5-fat' do |sb|
        sb.source_files = "ios/xcode102-swift5-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode102-swift5-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode102-swift5-fat/KlarnaMobileSDK.framework"
    end        
    
    s.subspec 'xcode11beta4-swift51-fat' do |sb|
        sb.source_files = "ios/xcode11beta4-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode11beta4-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode11beta4-swift51-fat/KlarnaMobileSDK.framework"
    end        
    
    s.subspec 'xcode11beta5-swift51-fat' do |sb|
        sb.source_files = "ios/xcode11beta5-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode11beta5-swift51-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode11beta5-swift51-fat/KlarnaMobileSDK.framework"
    end        
    

    s.default_subspec = 'xcode102-swift5-fat'
end
