// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonFriendSDK",
    platforms: [.iOS(.v12)],  // Minimum platform version for iOS
    products: [
        .library(
            name: "CommonFriendSDK",
            targets: ["CommonFriendSDK"]),  // Target your wrapper in the library product
    ],
    dependencies: [
        // Alamofire dependency
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0"),
        
        // SwiftyJSON dependency
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2")
    ],
    targets: [
        // Binary target for the .xcframework
        .binaryTarget(
            name: "CommonFriendSDK",  // The name of your binary target
            path: "Sources/CommonFriendSDK.xcframework"  // Path to the xcframework
        ),
        
        // Wrapper target with dependencies
        .target(
            name: "LibrarayAndFramework",  // Your wrapper target
            dependencies: ["CommonFriendSDK", "Alamofire", "SwiftyJSON"],
            path: "Sources/LibrarayAndFramework"
        ),
        
        // Test target
        .testTarget(
            name: "CommonFriendSDKTests",
            dependencies: ["LibrarayAndFramework"],
            path: "Tests/LibrarayAndFrameworkTests"  // Path to test files
        )
    ]
)

