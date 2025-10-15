// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "RxBridge",
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.6.0")
  ],
  products: [
    .library(name: "RxCocoaRuntime", targets: ["RxCocoaRuntimeBridge"])
  ],
  targets: [
    .target(
      name: "RxCocoaRuntimeBridge",
      dependencies: [
        .product(name: "RxCocoa", package: "RxSwift"),
        .product(name: "RxSwift", package: "RxSwift")
      ]
    )
  ]
)
