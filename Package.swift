// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rudder-Facebook",
    dependencies: [
      .package(name: "Rudder", url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.8.0"),
      .package(name: "FBSDKCoreKit", url: "https://github.com/facebook/facebook-ios-sdk.git", from: "13.2.0"),
        // add any other dependencies you need here
    ],
    targets: [
        .target(
            name: "Rudder-Facebook",
            dependencies: [
                "Rudder",
                "FBSDKCoreKit",
                // add any other dependencies you need here
            ],
            sources: [
              "Sources/Rudder-Facebook/ObjCFiles"
            ],
            publicHeadersPath: "Sources/Rudder-Facebook/ObjCFiles"
        )
    ]
)
