//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()

print("\(f.temperature)")

struct Size {
    var width = 0.0, heiht = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - size.width/2
        let originY = center.y - size.heiht/2
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}


class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheels"
    }
}

class Bicycle: Vehicle {
    override init () {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description


class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let nameMeat = Food(name: "Beacon")
nameMeat.name

let mysteryMeat = Food()
mysteryMeat.name

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBean = RecipeIngredient(name: "Beaon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purcahsed = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purcahsed ? " ✔" : " ✘"
        return output
    }
}

var beakfastList = [ShoppingListItem(), ShoppingListItem(name: "Becon"), ShoppingListItem(name: "Eggs", quantity: 6)]
beakfastList[0].name = "Orange juice"
beakfastList[0].purcahsed = true
beakfastList[1].purcahsed = true
beakfastList[2].purcahsed = true
for item in beakfastList {
    print(item.description)
}


struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "")


enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

let tem = TemperatureUnit(symbol: "K")

//struct Checkerboard {
//    let boardColors: [Bool] = {
//        var temporaryBoard = [Bool]()
//        var isBlack = false
//        for i in 1...8 {
//            for j in 1...8 {
//                temporaryBoard.append(isBlack)
//                isBlack = !isBlack
//            }
//            isBlack = !isBlack
//        }
//        return temporaryBoard
//    }()
//    
//    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
//        return boardColors[(row*8) + column]
//    }
//}
//
//let board = Checkerboard()
//print(board.squareIsBlackAtRow(row: 0, column: 1))
//print(board.squareIsBlackAtRow(row: 7, column: 7))


