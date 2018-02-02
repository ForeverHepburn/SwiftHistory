//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print("\(name) is being init.")
//    }
//    deinit {
//        print("\(name) is being deinit.")
//    }
//}
//
//var referance1: Person?
//var referance2: Person?
//var referance3: Person?
//
//referance1 = Person(name: "Jhon Appleseed")
//referance2 = referance1
//referance3 = referance1
//
//referance1 = nil
//referance2 = nil
//referance3 = nil


//swift 中的循环引用

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinit.")
    }
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    weak var tenant: Person?
    deinit {
        print("ApApartment \(unit) is being deinit.")
    }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "Jhon Appleseed")
unit4A = Apartment(unit: "4A")
john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil

