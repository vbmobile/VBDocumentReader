// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VBDocumentReader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VBDocumentReader",
            targets: ["VBDocumentReaderBinary"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.

        .binaryTarget(
            name: "VBDocumentReaderBinary",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/VBDocumentReader/VBDocumentReaderSPM/VBDocumentReader.xcframework-1.0.0-rc01.zip",
            checksum: "57d70a72de4d92d8db78fc93d90ced922a6b2ceee8ab6d1747e0cb42098207e4"
        ),
        .target(
            name: "VBDocumentReader",
            dependencies: ["VBDocumentReaderBinary"],
            path: "Sources"
        )
    ]
)
