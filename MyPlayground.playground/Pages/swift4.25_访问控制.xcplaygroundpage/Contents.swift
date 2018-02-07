//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "1"
stringToEdit.value += "2"
stringToEdit.value += "3"
print("numbers is \(stringToEdit.numberOfEdits).")

