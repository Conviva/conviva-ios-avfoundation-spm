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
            url: "https://github.com/Conviva/ConvivaAVFoundation/raw/4.3.0/Framework/ConvivaAVFoundation.xcframework.zip",
            checksum: "744c2848cb4df147cb481fb6e2324a82f4f1285dc9354292fc120b93290f82ab"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.3.0/Framework/ConvivaSDK.xcframework.zip",
            checksum: "4421fdf694728ef258ab46b442d2d796d8f1c1138e0b5edf0f12a2406f57ada9")
     ]
)
