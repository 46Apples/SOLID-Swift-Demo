/* BAD */

import UIKit

class Car {
    func open() {
        print("car.open()")
    }
    
    func startEngine() {
        print("car.startEngine()")
    }
    
    func changeEngine() {
        print("car.changeEngine()")
    }
}

// ISP violation: Driver instance does not make use of changeEngine()
class Driver {
    func takeRide(_ car: Car) {
        car.open()
        car.startEngine()
    }
}

// ISP violation: Mechanic instance does not make use of startEngine()
class Mechanic {
    func repair(_ car: Car) {
        car.open()
        car.changeEngine()
    }
}


// Run main
let driver = Driver()
driver.takeRide(Car())

let mechanic = Mechanic()
mechanic.repair(Car())
