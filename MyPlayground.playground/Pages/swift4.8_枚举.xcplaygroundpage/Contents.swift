//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productBarCode = Barcode.upc(1, 1, 1, 1)
productBarCode = .qrCode("ASDFASDF")
