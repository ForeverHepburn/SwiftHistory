//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var numberOfRows = 1
//}
//
//let john = Person()
//john.residence
////let roomCount = john.residence!.numberOfRows
//
//if let roomCount = john.residence?.numberOfRows {
//    print(true)
//} else {
//    print(false)
//}

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRows: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The nums of rooms is \(numberOfRows)")
    }
    
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingName != nil && street != nil {
            return "\(buildingName) \(street)"
        } else {
            return nil
        }
    }
}

let john = Person()
if let roomCount = john.residence?.numberOfRows {
    print("\(roomCount)")
} else {
    print(false)
}

let someAdress = Address()
someAdress.buildingNumber = "29"
someAdress.street = "Acacia Road"
john.residence?.address = someAdress

if john.residence?.printNumberOfRooms() != nil {
    print(true)
} else {
    print(false)
}
