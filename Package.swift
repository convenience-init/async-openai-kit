// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "AsyncOpenAIKit",
	platforms: [.iOS(.v14), .macOS(.v12)],
	
	products: [
		
		.library(
			name: "AsyncOpenAIKit",
			targets: ["AsyncOpenAIKit"]),
	],
	dependencies: [
		.package(url: "https://github.com/convenience-init/async-net", .upToNextMinor(from: "0.1.1-alpha"))
	],
	targets: [
		
		.target(
			name: "AsyncOpenAIKit",
			dependencies: [
				.product(name: "AsyncNet", package: "async-net")
			]),
		
			
		.testTarget(
			name: "AsyncOpenAIKitTests",
			dependencies: ["AsyncOpenAIKit"]),
	]
)
