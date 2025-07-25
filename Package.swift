// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CountriesFlags",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CountriesFlags",
            targets: ["CountriesFlags"]),
        .library(
            name: "CountriesFlagsObjC",
            targets: ["CountriesFlagsObjC"])
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CountriesFlags",
            dependencies: [],
            path: "Sources/CountriesFlags",
            exclude: [
                "../CountriesFlagsObjC"
            ]),
        .target(
            name: "CountriesFlagsObjC",
            dependencies: [],
            path: "Sources/CountriesFlagsObjC",
            exclude: [
                "../CountriesFlags"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath(".")
            ]),
        .testTarget(
            name: "CountriesFlagsTests",
            dependencies: ["CountriesFlags"],
            exclude: [
                "../CountriesFlagsObjCTests"
            ],
            resources: [
                .copy("Resources/Flags")
            ]),
        .testTarget(
            name: "CountriesFlagsObjCTests",
            dependencies: ["CountriesFlagsObjC"],
            exclude: [
                "../CountriesFlagsTests"
            ],
            resources: [
                .copy("Resources/Flags")
            ])
    ]
)
