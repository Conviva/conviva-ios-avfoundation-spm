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
            url: "https://github.com/Conviva/ConvivaAVFoundation/releases/download/4.3.1/ConvivaAVFoundation.xcframework.zip",
            checksum: "0d852635504758bc5e175bc683df5f21cee2ab710c74a02101d0c31398d55097"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.3.1/ConvivaSDK.xcframework.zip",
            checksum: "0b6c61813c111a42243c85d9e70bf2e17ab68b9b2d0ed533d808adb75b810d88")
     ]
)
