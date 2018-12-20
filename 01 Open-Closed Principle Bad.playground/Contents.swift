/* BAD */

import UIKit

class Logger {
    private let loggingForm: String!
    
    init(_ loggingForm: String) {
        self.loggingForm = loggingForm
    }
    
    func log(_ message: String) {
        if loggingForm == "console" {
            print("Logging '\(message)' to console")
        } else if loggingForm == "file" {
            print("Logging '\(message)' to file")
        } else {
            print("Logging '\(message)' nowhere")
        }
    }
}


// Run main
let logger = Logger("console")
logger.log("Test logging message")
