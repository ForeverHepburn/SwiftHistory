//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//扩展
//extension

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self/100.0 }
    var mm : Double { return self/1000.0 }
    var ft: Double { return self/3.28084 }
}

let onInch = 25.4.mm
print("\(onInch) meters.")

let threeFeet = 3.ft
print("\(threeFeet) meters.")

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("Hello")
}

//extension Int {
//    subscript(digitIndex: Int) -> Int {
//        var decimalBase = 1
//        for _ in 0..<digitIndex {
//            decimalBase *= 10
//        }
//        return (self/decimalBase)%10
//    }
//}
//746381295[0]

