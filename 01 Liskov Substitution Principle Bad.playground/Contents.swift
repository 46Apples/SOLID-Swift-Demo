/* BAD */

import UIKit

class Rectangle {
    private var width: Int
    private var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func set(width: Int) {
        self.width = width
    }
    
    func set(height: Int) {
        self.height = height
    }
}

class Square: Rectangle {
    // LSP violation: inherited class overrides behavior of parent’s methods
    override init(width: Int, height: Int) {
        super.init(width: width, height: height)
    }
    
    override func set(width: Int) {
        super.set(width: width)
    }
    
    override func set(height: Int) {
        super.set(height: height)
    }
}


// Run main
let rectangle = Rectangle(width: 200, height: 100)
let square = Square(width: 200, height: 100) // Clearly not a square
