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
            url: "https://github.com/Conviva/ConvivaAVFoundation/releases/download/4.3.4/ConvivaAVFoundation.xcframework.zip",
            checksum: "844e3f44438e8f74b252fea67fa759c0947da6dfff5b8862efb36690a3ff7dbc"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.3.4/ConvivaSDK.xcframework.zip",
            checksum: "d60a513fa894e74b18cd91a306f853435a0ea177a963e44efaa98a49525bdfe8")
     ]
)
