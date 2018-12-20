/* BAD */

import UIKit

class EventTracker {
    let logger: ConsoleLogger
    
    init() {
        // An instance of low-level class ConsoleLogger is directly created inside high-level EventTracker class which increases class’ coupling
        self.logger = ConsoleLogger()
    }
    
    func log(_ message: String) {
        self.logger.log(message)
    }
}

class ConsoleLogger {
    func log(_ message: String) {
        print("Logging '\(message)' through ConsoleLogger instance")
    }
}


// Run main
let eventTracker = EventTracker()
eventTracker.log("Test logging message")
