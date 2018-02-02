//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//func canThrowErrors() throws -> String
//func cannotThrowErrors() -> String

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(conisNeeded: Int)
    case outOfStock
}

print(1)

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7,count: 11)]
    var coinsDeposited = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }

    func vend(itemNameed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(conisNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")

    }
}

print(false)

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8

do {
}

