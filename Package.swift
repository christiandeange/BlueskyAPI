// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/0.3.3/bluesky-kmmbridge-0.3.3.zip"
let remoteKotlinChecksum = "66d8e85d24bf85f1cd557e6246c5c29975ccfa9f75a1951d285b447b12fc945f"
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
