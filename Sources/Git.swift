import Foundation
import ScriptingSupport

public func Git(in rootDir: URL, command: String, arguments: [String] = []) -> (standardOutput: String?, terminationStatus: Int32) {
    let gitDir = rootDir.appendingPathComponent(".git", isDirectory: true)

    let task = Task(launchPath: "/usr/local/bin/git",
                    arguments: ["--git-dir=\(gitDir.path)", "--work-tree=\(rootDir.path)", command] + arguments)
    task.run()

    return (standardOutput: task.standardOutput, terminationStatus: task.terminationStatus)
}
