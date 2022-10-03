// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CommonMarkSwift",
    products: [
        .library(
            name: "CommonMarkSwift",
            targets: ["CommonMarkSwift"]
		),
    ],
    dependencies: [
		.package(
			url: "https://github.com/Quick/Nimble.git",
			from: "10.0.0"
		),
		.package(
			url: "https://github.com/Quick/Quick.git",
			from: "5.0.0"
		)
    ],
    targets: [
        .target(
            name: "CommonMarkSwift",
            dependencies: ["libcmark"]
		),
        .testTarget(
            name: "CommonMarkSwiftTests",
            dependencies: [
				"CommonMarkSwift",
				"Nimble",
				"Quick"
			]
		),
		.target(
			name: "libcmark",
			exclude: [
				"case_fold_switch.inc",
				"COPYING",
				"entities.inc"
			]
		)
    ]
)
