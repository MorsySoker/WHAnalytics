// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WHAnalytics",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WHAnalytics",
            targets: ["WHAnalytics"]),
    ],
    dependencies: [
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            .upToNextMajor(from: "10.4.0")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WHAnalytics",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                .product(name: "FirebaseCrashlytics", package: "Firebase"),
            ]
        ),
        .testTarget(
            name: "WHAnalyticsTests",
            dependencies: ["WHAnalytics"]),
    ]
)
