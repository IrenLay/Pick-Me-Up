// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Pick Me Up",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Pick Me Up",
            targets: ["AppModule"],
            bundleIdentifier: "Apple-Developer-Academy.Pick-Me-Up",
            teamIdentifier: "5TZ2QG4WQK",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.red),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .landscapeRight,
                .landscapeLeft
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)