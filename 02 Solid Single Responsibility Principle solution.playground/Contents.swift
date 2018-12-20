/* GOOD */

import UIKit

class Product { }

class PlaceOrder {
    private let product: Product!
    
    init(_ product: Product) {
        self.product = product
    }
    
    func run() {
        StockAvailability(product).run()
        ProductPayment(product).run()
        ProductShipment(product).run()
    }
}


// PlaceOrder derivatives
class StockAvailability: PlaceOrder {
    override func run() {
        print("Logic related to verification of stock availability")
    }
}

class ProductPayment: PlaceOrder {
    override func run() {
        print("Logic related to payment process")
    }
}

class ProductShipment: PlaceOrder {
    override func run() {
        print("Logic related to shipment process")
    }
}


// Run main
let product = Product()
let placeOrder = PlaceOrder(product)
placeOrder.run()
