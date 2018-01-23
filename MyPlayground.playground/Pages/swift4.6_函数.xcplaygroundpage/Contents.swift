//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func greet(person: String) -> String {
    let greeting = "hello," + person + "!"
    return greeting
}

greet(person: "bob")
