// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-docker-example",
  products: [],
  targets: [
    .executableTarget(
      name: "executable",
      dependencies: ["Library", "CLibrary", "CXXLibrary"],
      swiftSettings: [.interoperabilityMode(.Cxx)]),
    .target(
      name: "Library"),
    .testTarget(
      name: "LibraryTests",
      dependencies: ["Library"]),
    .target(
      name: "CLibrary"),
    .testTarget(
      name: "CLibraryTests",
      dependencies: ["CLibrary"]),
    .target(
      name: "CXXLibrary"),
    .testTarget(
      name: "CXXLibraryTests",
      dependencies: ["CXXLibrary"],
      swiftSettings: [.interoperabilityMode(.Cxx)])
  ]
)
