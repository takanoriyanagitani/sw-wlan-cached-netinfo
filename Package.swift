// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "WlanCachedNetworkInfo",
  dependencies: [
    .package(url: "https://github.com/realm/SwiftLint", from: "0.58.2")
  ],
  targets: [
    .executableTarget(
      name: "WlanCachedNetworkInfo")
  ]
)
