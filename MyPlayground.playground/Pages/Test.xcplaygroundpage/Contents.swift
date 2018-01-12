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


var optionalString: String? = "Hello"
print(optionalString == nil)
var greeting = "Hello!"
if let name = optionalString {
    greeting = "Hello, \(name)";
} else {
    greeting = "Hello, boy"
}

