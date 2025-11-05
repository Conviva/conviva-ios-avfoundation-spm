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
            targets: ["ConvivaAVFoundation", "ConvivaSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/Conviva/ConvivaAVFoundation/raw/4.2.4/Framework/ConvivaAVFoundation.xcframework.zip",
            checksum: "e6164572b13a10a3b6a27794c09f32f0c9fef90adfb44c46891f45e12c62e7ed"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.2.4/Framework/ConvivaSDK.xcframework.zip",
            checksum: "f7e1836eba79e062aa5337c802aece655cb463969e5a28f04cb503eba09b4c61")
     ]
)
