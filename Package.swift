// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rudder-Facebook",
    dependencies: [
      .package(name: "Rudder", url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.8.0"),
      .package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk.git", from: "14.0.0")
        // add any other dependencies you need here
    ],
    
    targets: [
        .target(
            name: "Rudder-Facebook",
            dependencies: [
                "Rudder",
                .product(name: "FacebookCore", package: "Facebook")
                // add any other dependencies you need here
            ],
            sources: [
              "ObjCFiles"
            ],
            publicHeadersPath: "ObjCFiles"
        )
    ]
)
