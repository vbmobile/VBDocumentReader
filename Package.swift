// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "VBDocumentReader",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "VBDocumentReader",
            targets: ["VBDocumentReaderBinary"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VBDocumentReaderBinary",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/VBDocumentReader/VBDocumentReaderSPM/VBDocumentReader.xcframework-1.0.0-rc01.zip",
            checksum: "57d70a72de4d92d8db78fc93d90ced922a6b2ceee8ab6d1747e0cb42098207e4"
        )
    ]
)
