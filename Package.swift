// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "greenstand-treetracker-core",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "greenstand-treetracker-core",
      targets: ["greenstand-treetracker-core"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", branch: "main"),
  ],
  targets: [
    .target(
      name: "greenstand-treetracker-core",
      dependencies: [
        .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
      ],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "greenstand-treetracker-coreTests",
      dependencies: ["greenstand-treetracker-core"]
    ),
  ]
)
