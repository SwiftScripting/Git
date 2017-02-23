import PackageDescription

let package = Package(
    name: "Git",
    dependencies: [
        .Package(url: "https://github.com/SwiftScripting/ScriptingSupport.git", majorVersion: 1)
    ]
)
