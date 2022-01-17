Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.1.3"
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

    
    s.subspec 'xcode-12.5.1-fat' do |sb|
        sb.source_files = "ios/xcode-12.5.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-12.5.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-12.5.1-fat/KlarnaMobileSDK.framework"
        sb.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        sb.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end

    s.subspec 'xcode-12.5.1-fat-full' do |sb|
        sb.source_files = "ios/full/xcode-12.5.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/full/xcode-12.5.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/full/xcode-12.5.1-fat/KlarnaMobileSDK.framework"
        sb.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        sb.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end
    
    s.subspec 'xcode-13.1-fat' do |sb|
        sb.source_files = "ios/xcode-13.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/xcode-13.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/xcode-13.1-fat/KlarnaMobileSDK.framework"
        sb.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        sb.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end

    s.subspec 'xcode-13.1-fat-full' do |sb|
        sb.source_files = "ios/full/xcode-13.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.public_header_files = "ios/full/xcode-13.1-fat/KlarnaMobileSDK.framework/Headers/*.h"
        sb.vendored_frameworks = "ios/full/xcode-13.1-fat/KlarnaMobileSDK.framework"
        sb.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
        sb.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end
    

    s.subspec 'full' do |sb|
        sb.vendored_frameworks = "ios/XCFramework/full/universal/KlarnaMobileSDK.xcframework"
    end

    s.subspec 'basic' do |sb|
        sb.vendored_frameworks = "ios/XCFramework/basic/universal/KlarnaMobileSDK.xcframework"
    end

    s.default_subspec = 'full'

end
