// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "ZipZap",
	platforms: [
		.iOS("9.3"),
		.macOS("10.11"),
		.tvOS("9.2"),
		.watchOS("3.0"),
	],
	products: [
		.library(
			name: "ZipZap",
			targets: ["ZipZap"]
		),
	],
	targets: [
		.target(
			name: "ZipZap",
			path: "ZipZap",
			publicHeadersPath: "",
			cSettings: [
				.define("CLANG_CXX_LIBRARY", to: "libc++", nil),
				.define("GCC_ENABLE_OBJC_EXCEPTIONS", to: "NO", nil),
				.define("OTHER_CPLUSPLUSFLAGS", to: "-fno-exceptions", nil),
			],
			linkerSettings: [
				.linkedLibrary("z")
			]
		),
	],
	cxxLanguageStandard: .cxx11
)
