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
            url: "https://github.com/Conviva/ConvivaAVFoundation/releases/download/4.3.3/ConvivaAVFoundation.xcframework.zip",
            checksum: "534d954a2cbc4277e0871e00eab19525ce962a5e560f595581a4c89653883fee"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.3.3/ConvivaSDK.xcframework.zip",
            checksum: "95f8f6533994c2c4149830622df79b7a5aee8c65f263ffae11ab9720a40cb31a")
     ]
)
