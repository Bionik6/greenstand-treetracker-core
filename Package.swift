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
  ],
  targets: [
    .target(name: "greenstand-treetracker-core", dependencies: []),
    .testTarget(name: "greenstand-treetracker-coreTests", dependencies: ["greenstand-treetracker-core"]),
  ]
)
