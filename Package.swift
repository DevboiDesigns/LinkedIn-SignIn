// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LinkedIn-SignIn",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LinkedIn-SignIn",
            targets: ["LinkedIn-SignIn"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LinkedIn-SignIn",
            dependencies: [
                .product(name: "MBProgressHUD", package: "MBProgressHUD"),
            ]),
        
            .testTarget(
            name: "LinkedIn-SignInTests",
            dependencies: ["LinkedIn-SignIn"]),
    ]
)
