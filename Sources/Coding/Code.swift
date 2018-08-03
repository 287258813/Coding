import Foundation.NSTask

extension String {
    var lastComponent: String? {
        return String(split(separator: "/").last!)
    }    
}

func open(_ args: [String] = CommandLine.arguments) throws {
    
    if args.count < 2 {
        throw Error.argsIsEmpty
    }
    
    let tool = args[0].lastComponent
    let path = args[1]
    
    var args = ["-a"]
    switch tool {
    case "xcode": args.append("Xcode")
    case "code": args.append("Visual Studio Code")
    default: throw Error.noApplication
    }
    
    let task = Process()
    task.arguments = ["open"] + args + [path]
    task.launchPath = "/usr/bin/env"
    task.launch()
}

enum Error: Swift.Error {
    case argsIsEmpty
    case noApplication
}




