// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rudder-Facebook",
    products: [
            .library(
                name: "Rudder-Facebook",
                targets: ["Rudder-Facebook"]
            )
        ],
    dependencies: [
      .package(name: "Rudder", url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.8.0"),
      .package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk.git", from: "14.0.0")
    ],
    targets: [
        .target(
            name: "Rudder-Facebook",
            dependencies: [
                "Rudder",
                "Facebook"
            ],
            sources: [
              "ObjCFiles"
            ],
            publicHeadersPath: "ObjCFiles"
        )
    ]
)
