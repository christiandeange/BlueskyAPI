// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/0.2.0/bluesky-kmmbridge-0.2.0.zip"
let remoteKotlinChecksum = "c3974e0f068b080184d47796b972ff89a70259c7483329e58df3c77e32c6ea64"
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
