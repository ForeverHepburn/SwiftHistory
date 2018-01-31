//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
//        set(newCenter) {
//            origin.x = newCenter.x - size.width/2
//            origin.y = newCenter.y - size.height/2
//        }
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0),size: Size(width: 10, height: 10))
let initialSquareCenter = square.center
print("\(initialSquareCenter.x) , \(initialSquareCenter.y)")
square.center = Point(x: 15, y: 15)
print("\(initialSquareCenter.x) , \(initialSquareCenter.y)")

class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set \(newValue).")
        }
        
        didSet {
            if totalSteps > oldValue {
                print("Add \(totalSteps - oldValue) steps.")
            }
        }
    }
}

var stepCount = StepCounter()
stepCount.totalSteps = 100
stepCount.totalSteps = 80
stepCount.totalSteps = 100
stepCount.totalSteps = 100



