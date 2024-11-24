// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/0.3.0/bluesky-kmmbridge-0.3.0.zip"
let remoteKotlinChecksum = "cbf125b8339208afdf2ee19ac0532b48e827d67bb162d492d6e76d68f934201f"
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
