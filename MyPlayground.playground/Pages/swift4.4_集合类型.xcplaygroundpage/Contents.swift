//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

str = "1223123"

var array = [Int]()

var shoppingList: [String] = ["eggs","milk"]

if shoppingList.isEmpty {
    print(11111)
} else {
    print(22222)
}

shoppingList.append("fruit")

shoppingList += ["newValue"]

var firstItem = shoppingList[0]

shoppingList[0] = "six eggs"
shoppingList.insert("new1", at: 0)
shoppingList.remove(at: 0)

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("item \(index): \(value)")
}


var letters = Set<Character>()
letters.insert("a")
letters
letters = []

var favoriteGenres: Set<String> = ["rock","classical","hip hop"]

