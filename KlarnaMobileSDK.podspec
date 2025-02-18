Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.6.24"
    s.summary      = "Klarna Mobile SDK for iOS"
    s.description  = <<-DESC
    Klarna Mobile SDK for iOS apps.
    DESC
    s.homepage     = "https://github.com/klarna/klarna-mobile-sdk.git"
    s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
    s.author       = { "Klarna Mobile SDK Team" => "mobile.sdk@klarna.com" }
    s.platform     = :ios, "10.0"
    s.requires_arc = true
    s.swift_version = "5.0"
    s.source        = { :git => "https://github.com/klarna/klarna-mobile-sdk.git", :tag => s.version.to_s }
    s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/KlarnaMobileSDK/**"' }
    s.module_name         = 'KlarnaMobileSDK'

    s.subspec 'xcode-15.3-fat' do |sb|
        s.source              = { :http => "https://github.com/klarna/klarna-mobile-sdk/releases/download/#{s.version.to_s}/KlarnaMobileSDK-basic.xcframework.zip" }
        sb.preserve_paths      = 'KlarnaMobileSDK.xcframework'
        sb.vendored_frameworks = 'KlarnaMobileSDK.xcframework'
    end

    s.subspec 'xcode-15.3-fat-full' do |sb|
        s.source              = { :http => "https://github.com/klarna/klarna-mobile-sdk/releases/download/#{s.version.to_s}/KlarnaMobileSDK-full.xcframework.zip" }
        sb.preserve_paths      = 'KlarnaMobileSDK.xcframework'
        sb.vendored_frameworks = 'KlarnaMobileSDK.xcframework'
    end
    
    s.subspec 'full' do |sb|
        s.source              = { :http => "https://github.com/klarna/klarna-mobile-sdk/releases/download/#{s.version.to_s}/KlarnaMobileSDK-full.xcframework.zip" }        
        sb.preserve_paths      = 'KlarnaMobileSDK.xcframework'
        sb.vendored_frameworks = 'KlarnaMobileSDK.xcframework'
    end

    s.subspec 'basic' do |sb|
        s.source              = { :http => "https://github.com/klarna/klarna-mobile-sdk/releases/download/#{s.version.to_s}/KlarnaMobileSDK-basic.xcframework.zip" }
        sb.preserve_paths      = 'KlarnaMobileSDK.xcframework'
        sb.vendored_frameworks = 'KlarnaMobileSDK.xcframework'
    end

    s.default_subspec = 'basic'

end
