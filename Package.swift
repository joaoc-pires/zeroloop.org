// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "ZeroloopOrg",
    products: [
        .executable(
            name: "ZeroloopOrg",
            targets: ["ZeroloopOrg"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "ZeroloopOrg",
            dependencies: ["Publish"]
        )
    ]
)