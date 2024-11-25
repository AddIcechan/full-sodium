#
#  Be sure to run `pod spec lint full-sodium.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "full-sodium"
  spec.version      = "1.0.25"
  spec.summary      = "full build libsodium"
  spec.description  = <<-DESC
      full build libsodium, support more features
                        DESC

  spec.homepage     = "https://github.com/AddIcechan/full-sodium"
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "ADDICE" => "addice.ch@gmail.com" }
 
   spec.ios.deployment_target = "12.0"
   spec.osx.deployment_target = "10.13"
   spec.watchos.deployment_target = "8.0"
   spec.tvos.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/AddIcechan/full-sodium.git", :tag => "#{spec.version}" }
  
  spec.source_files  = "Sources/full-sodium.h"

  spec.pod_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium"',
    "OTHER_SWIFT_FLAGS" => '$(inherited) -no-verify-emitted-module-interface'
  }

  spec.user_target_xcconfig = {
    "SWIFT_INCLUDE_PATHS" => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium"',
    "OTHER_SWIFT_FLAGS" => '$(inherited) -no-verify-emitted-module-interface'
  }


  spec.vendored_frameworks  = "Clibsodium.xcframework"
  spec.public_header_files = "Sources/full-sodium.h"

  spec.static_framework = false
  
  spec.requires_arc = true

end
