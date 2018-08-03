import Swiftline
import Foundation


extension NSDate {
    
    var now: Date {
        let this = self as Date
        return Date()
    }
}

extension String {
    var lastComponent: String? {
        let comps = split(separator: "/")
        if comps.isEmpty {
            return nil
        }
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
    
    _ = run("open", args: args + [path])
}

enum Error: Swift.Error {
    case argsIsEmpty
    case noApplication
}



