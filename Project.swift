// (c) Subito.it proprietary and confidential

import ProjectDescription

let project = Project(
    name: "Preview",
    targets: [
        .target(
            name: "Preview",
            destinations: .macOS,
            product: .app,
            bundleId: "io.tuist.Preview",
            infoPlist: .default,
            sources: ["Preview/Sources/**"],
            resources: ["Preview/Resources/**"],
            dependencies: [
                .external(name: "PreviewGallery")
            ]
        ),
        .target(
            name: "PreviewTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "io.tuist.PreviewTests",
            infoPlist: .default,
            sources: ["Preview/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Preview")]
        )
    ]
)
