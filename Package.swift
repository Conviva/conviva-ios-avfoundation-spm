// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAVFoundation",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAVFoundation",
            targets: ["ConvivaAVFoundationTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/Conviva/ConvivaAVFoundation/raw/4.0.43/Framework/ConvivaAVFoundation.xcframework.zip",
            checksum: "69e87419eda34b2897f7b8815d1fe8236d0b36483c09d67fb19c6dd6b1934cde"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.37/Framework/ConvivaSDK.xcframework.zip",
            checksum: "4f750e8963229a76e63bc7226edb3c598f7607e0d3c92bc9f73e153c0bc480c4"),

        .target(
              name: "ConvivaAVFoundationTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaAVFoundation")
              ],
              path: "PlatformExcludes"
            )
     ]
)
