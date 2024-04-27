// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/0.1.0/bluesky-kmmbridge-0.1.0.zip"
let remoteKotlinChecksum = "89b08c084f4312e7f5bd0a7036e0d0f494d76414c3f16dfdde967983c49deb05"
let packageName = "BlueskyAPI"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)
