// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ExyteMediaPicker",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ExyteMediaPicker",
            targets: ["ExyteMediaPicker"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/exyte/AnchoredPopup.git",
            exact: "1.1.3"
        )
    ],
    targets: [
        .target(
            name: "ExyteMediaPicker",
            dependencies: [
                .product(name: "AnchoredPopup", package: "AnchoredPopup")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "MediaPickerTests",
            dependencies: ["ExyteMediaPicker"]),
    ]
)
