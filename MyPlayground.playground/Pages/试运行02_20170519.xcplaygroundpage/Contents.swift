//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//创建类及对象

//类

class Shape{
    var numOfSides = 0
    let length = 0
    func simpleDescription() -> String {
        return "A shape with \(numOfSides) sides."
    }
    
    func getLength(length: NSInteger) -> NSInteger {
        return 4*length
    }
}


var shape = Shape()
print(shape.simpleDescription())
print(shape.getLength(length: 4))



class NameShap{
    var numberOfSides: Int = 0
    var name:String
    
    init(name:String) {
        self.name = name;
    }
    
    func simpleDescription() -> String {
        return "I will show you \(numberOfSides) answers."
    }
}

//协议

protocol ExampleProtocol{
    var simpleDescription: String{ get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol{
    var simpleDescription: String = "name"
    func adjust() {
        simpleDescription += "100"
    }
}

var a = SimpleClass()
a.adjust()

let aDescription = a.simpleDescription


//错误处理
enum PrinterError: Error{
    case OutPaper
    case NoToner
    case OnFire
}

func send(job:Int, toPrinter printName: String) throws -> String{
    if printName == "Never Has  Toner" {
        throw PrinterError.NoToner
    }
    return "Job sent"
}

print(try send(job: 404, toPrinter: "Never Has  Toner"))







