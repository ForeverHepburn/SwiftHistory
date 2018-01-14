//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//swift
let num = 10
//num = 11
let numB = 11

var numX = 12
numX = 13

let doubleValue: Double = 12.0
let floatValu: Float = 4
var variableFloatValue: Float = 4
print(floatValu)

let label = "The width is "
let width = 94
let widthhLabel = label + String(width)
print(widthhLabel)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."


let floadNum = 3.0
var floatString = String(floadNum)
floatString = "hello,\(floadNum)"


var shoppingList = ["1","2"]

var dict: Dictionary = ["key1": "value1",
                        "key2": "value2"]
let shop = ["1","2","3","4"]


let emptySting = String();
let emptyArray = [String]()
var emptyDict = [String: String]();
emptyDict["key1"] = "value1"
emptyDict


var optionalString: String?
    = "Hello"
print(optionalString == nil)
var greeting = "Hello!"
if let name = optionalString {
    greeting = "Hello, \(name)";
} else {
    greeting = "Hello, boy"
}

var numbers = [20,19,7,12]
numbers.map ({ (number: Int) -> Int in
    let result = 3*num
    return result
})

print(numbers)

let result = numbers.map({number in 3*number})
print(result)

let sorrtedNumbers = numbers.sorted{$0>$1}
print(sorrtedNumbers)


class testClass {
    let num = 0
    var name: String
    var numberOfSides: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func addOne(number: Int) -> Int {
        return number + 1
    }
}

var test = testClass.init(name: "name")
test.addOne(number: 1)
print(test.addOne(number: 2))

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let square = Square(sideLength: 10, name: "square")
square.area()
square.simpleDescription()


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
}

var triangle = EquilateralTriangle.init(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.perimeter)

print(triangle.sideLength)


enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "a"
    func adjust() {
        simpleDescription += "---"
    }
    
}



