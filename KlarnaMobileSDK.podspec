Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.0.25"
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

    
    s.subspec 'xcode-10.3-fat-basic' do |sb|
        sb.source_files = "ios/xcode-10.3-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-10.3-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-10.3-fat/KlarnaMobileSDK.framework"
    end

    s.subspec 'xcode-11.3.1-fat-basic' do |sb|
        sb.source_files = "ios/xcode-11.3.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-11.3.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-11.3.1-fat/KlarnaMobileSDK.framework"
    end
    
    s.subspec 'xcode-11.7-fat-basic' do |sb|
        sb.source_files = "ios/xcode-11.7-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-11.7-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-11.7-fat/KlarnaMobileSDK.framework"
    end
    
    s.subspec 'xcode-12.0-fat-basic' do |sb|
        sb.source_files = "ios/xcode-12.0-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-12.0-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-12.0-fat/KlarnaMobileSDK.framework"
    end

    s.default_subspec = 'xcode-12.0-fat-basic'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
