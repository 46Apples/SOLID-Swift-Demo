/* GOOD */

import UIKit

protocol Logger {
    func log(_ message: String)
}

class EventTracker {
    private let logger: Logger
    
    init (_ logger: Logger) {
        // Use dependency injection as in closed/open principle. Logger is a protocol definition (abstract), not a concrete class
        self.logger = logger
    }
    
    func log(_ message: String) {
        logger.log(message)
    }
}

class ConsoleLogger: Logger {
    func log(_ message: String) {
        print("Logging '\(message)' to console")
    }
}

class FileLogger: Logger {
    func log(_ message: String) {
        print("Logging '\(message)' to file")
    }
}


// Run main
let message = "Test DIP logging message"

let consoleEventTracker = EventTracker(ConsoleLogger())
consoleEventTracker.log(message)

let fileEventTracker = EventTracker(FileLogger())
fileEventTracker.log(message)

