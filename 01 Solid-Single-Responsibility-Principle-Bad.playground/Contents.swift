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
