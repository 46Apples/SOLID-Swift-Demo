/*
 Single Responsibility Principle
 
 1. Meaning
 Class should have only one responsibility which means class should be highly cohesive and implement strongly related logic. Class implementing feature 1 AND feature 2 AND feature 3 (and so on) violates SRP.
 
 2. How to recognize code smell?
 2.1 More than one contextually separated piece of code within single class.
 2.2 Large setup in tests (TDD is very useful when it comes to detecting SRP violation).
 
 3. Benefits
 3.1 Separated classes responsible for given use case can be now reused in other parts of an application.
 3.2. Separated classes responsible for given use case can be now tested separately.
 
 */

/* BAD */

import UIKit

class Product { }

class PlaceOrder {
    private let product: Product!
    
    init(_ product: Product) {
        self.product = product
    }
    
    public func run() {
        print("1. Logic related to verification of stock availability")
        print("2. Logic related to payment process")
        print("3. Logic related to shipment process")
    }
}


// Run main
let product = Product()
let placeOrder = PlaceOrder(product)
placeOrder.run()
