Pod::Spec.new do |s|
    s.name         = "KlarnaMobileSDK"
    s.version      = "2.6.29"
    s.summary      = "Klarna Mobile SDK for iOS"
    s.description  = <<-DESC
    Klarna Mobile SDK for iOS apps.
    DESC
    s.homepage     = "https://github.com/klarna/klarna-mobile-sdk.git"
    s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
    s.author       = { "Klarna Mobile SDK Team" => "mobile.sdk@klarna.com" }
    s.platform     = :ios, "10.0"
    s.source       = { :http => "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.6.29/KlarnaMobileSDK.xcframework.zip" }
    s.requires_arc = true
    s.swift_version = "5.0"

    s.subspec 'full' do |sb|
        sb.vendored_frameworks = "KlarnaMobileSDK.xcframework"
    end

    s.subspec 'basic' do |sb|
        sb.vendored_frameworks = "KlarnaMobileSDK.xcframework"
    end

    s.default_subspec = 'basic'

end
