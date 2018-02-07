//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//按位取反
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits

//按位与
let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits

//按位或
let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedBits = someBits | moreBits

//按位异或
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits

//按位左移<< 按位右移>>
let shiftBits: UInt8 = 4
shiftBits << 1
shiftBits << 2
shiftBits << 5
shiftBits << 6

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16








