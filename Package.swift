// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ImageLoader-iOS",
  platforms: [
    .iOS(.v16),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "ImageLoader-iOS",
      targets: ["ImageLoader-iOS"]),
  ],
  dependencies: [
    .package(url: "https://github.com/onevcat/Kingfisher", exact: "7.10.2")
  ],
  targets: [
    .target(
      name: "ImageLoader-iOS",
      dependencies: [
        .product(name: "Kingfisher", package: "Kingfisher")
      ]),
    .testTarget(
      name: "ImageLoader-iosTests",
      dependencies: ["ImageLoader-iOS"]),
  ]
)
