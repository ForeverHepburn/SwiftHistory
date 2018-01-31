//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour."
    }
    
    func makeNoise() {
        
    }
}


let someVehicle = Vehicle();
someVehicle.description

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket

bicycle.currentSpeed = 20
bicycle.description

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

