// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        productTypes: [:]
    )
#endif

let package = Package(
    name: "Preview",
    dependencies: [
        // Add your own dependencies here:
        .package(url: "https://github.com/EmergeTools/SnapshotPreviews-iOS", from: "0.10.13")
    ]
)
