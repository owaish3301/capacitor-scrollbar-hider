// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorScrollbarHider",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorScrollbarHider",
            targets: ["ScrollbarHiderPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ScrollbarHiderPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ScrollbarHiderPlugin"),
        .testTarget(
            name: "ScrollbarHiderPluginTests",
            dependencies: ["ScrollbarHiderPlugin"],
            path: "ios/Tests/ScrollbarHiderPluginTests")
    ]
)