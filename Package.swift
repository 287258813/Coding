// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Coding",
    dependencies: [
//        .package(url: "https://github.com/nsomar/Swiftline.git", Version(0,5,0)..<Version(1,0,0))
    ],
    targets: [
        .target(
            name: "Coding",
            dependencies: [
//                "Swiftline"
            ]
        )
    ]
)
