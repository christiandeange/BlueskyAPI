![Swift Package Manager](https://img.shields.io/maven-central/v/sh.christian.ozone/bluesky?label=Swift%20Package%20Manager&color=green)

BlueskyAPI
==========

### Overview

Swift bindings for Bluesky Social, powered by [Ozone](https://github.com/christiandeange/ozone). No relation to the moderation tools also named [Ozone](https://github.com/bluesky-social/ozone).

> **Warning**
>
> 🚧 🚧 🚧 Everything in here is very much a work-in-progress!
> The [upstream schemas](https://github.com/christiandeange/ozone/commits/main/bluesky/lexicons) are still subject to breaking
> changes and may break at any moment if used in production code. Use at your own risk!

### Installation

In Xcode, select **File > Add Packages...** and enter https://github.com/christiandeange/BlueskyAPI.

### Sample Usage

```swift
let api = XrpcBlueskyApi()
let call = try await api.describeServer()
switch onEnum(of: call) {
case .success(let success):
    print(success.response)
case .failure(let failure):
    print(failure.response ?? failure.error ?? failure)
}
```

Docs are available at [ozone.christian.sh](https://ozone.christian.sh).
