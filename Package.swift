// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/0.3.2/bluesky-kmmbridge-0.3.2.zip"
let remoteKotlinChecksum = "c61883bedcf01a7f988e0f3cf681334162d6d60e0ea27613e851add168e7c515"
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
