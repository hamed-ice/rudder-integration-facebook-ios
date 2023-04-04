// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//import PackageDescription
//
//let package = Package(
//    name: "Address",
//    platforms: [
//        .iOS(.v13),
//    ],
//    products: [
//        .library(
//            name: "Address",
//            targets: ["Address"]
//        )
//    ],
//    dependencies: [
//      .package(name: "UIComponents", path: "../../../Core/UIComponents"),
//      .package(name: "Configs", path:"../../../Core/Configs"),
//      .package(name: "DataModels", path:"../../../Core/DataModels"),
//      .package(name: "Discovery", path:"../../../Core/Discovery"),
//    ],
//    targets: [
//        .target(
//            name: "Address",
//            dependencies: ["UIComponents", "Configs", "DataModels", "Discovery"]
//        ),
//        .testTarget(
//            name: "AddressTests",
//            dependencies: ["Address"]
//        ),
//    ],
//    swiftLanguageVersions: [.v5]
//)
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Rudder-Facebook",
    dependencies: [
      .package(name: "Rudder", path: "https://github.com/rudderlabs/rudder-sdk-ios.git"),
      .package(name: "FBSDKCoreKit", path: "https://github.com/facebook/facebook-ios-sdk.git"),
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
            path: "https://github.com/hamed-ice/rudder-integration-facebook-ios.git"
        ),
    ]
)
