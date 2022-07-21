// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "TreeTrackerCore",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "TreeTrackerCore",
      targets: ["TreeTrackerCore"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", branch: "main"),
  ],
  targets: [
    .target(
      name: "TreeTrackerCore",
      dependencies: [
        .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
      ],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "TreeTrackerCoreTests",
      dependencies: ["TreeTrackerCore"]
    ),
  ]
)
