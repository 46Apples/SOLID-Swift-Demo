/* GOOD */

import UIKit

protocol Logger {
    func log(_ message: String)
}

class EventTracker {
    private let logger: Logger
    
    init (_ logger: Logger) {
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


// Main loop
let eventTracker = EventTracker(ConsoleLogger())
eventTracker.log("Test logging message")
