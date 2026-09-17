// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAVFoundation",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAVFoundation",
            targets: ["ConvivaAVFoundation", "ConvivaSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/Conviva/ConvivaAVFoundation/releases/download/4.4.1/ConvivaAVFoundation.xcframework.zip",
            checksum: "4805fb49f6a65044e4021e6102848d67c08db966a0645f7b78d705a7b4bd9975"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.4.1/ConvivaSDK.xcframework.zip",
            checksum: "6e0668619c403f88c1c26ecaf4e899a734a32f21bcd27868b5dcf623100baae6")
     ]
)
