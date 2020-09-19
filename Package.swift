// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "LottieObjc",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "LottieObjc", targets: ["LottieObjc"])
    ],
    targets: [
        .target(
            name: "LottieObjc",
            path: "lottie-ios/Classes",
            publicHeadersPath: "PublicHeaders",
            cSettings: [
                .headerSearchPath("AnimatableLayers"),
                .headerSearchPath("AnimatableProperties"),
                .headerSearchPath("Extensions"),
                .headerSearchPath("MacCompatibility"),
                .headerSearchPath("Models"),
                .headerSearchPath("RenderSystem/**"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: .some([.iOS])))
            ]
        )
    ]
)
