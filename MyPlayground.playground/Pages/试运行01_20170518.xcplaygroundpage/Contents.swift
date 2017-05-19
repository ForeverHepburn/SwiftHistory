//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let name = "user"
print(name)

var swiftCode = "hello world"
print(name+" "+swiftCode)


print("Hello, world!")

let valueA = 10;
let valueB = 11;
//valueA += 10;

var value = 20;
value += valueA;
print(value);


let intValue = 90;
let doubleValue = 100;

print(intValue.description)

let floatValue: CGFloat = 100;
//print("%.2f",floatValue);


let label = "The width is";
let width:String = "94";
let widthLabel: String = label + width;
print(widthLabel);

let apples = 3;
let oranges = 5;
let appleSum = "I have \(apples) apples";
let orangeSum = "I have\(oranges) oranges";
print("I have no \(apples) in bag.");


var shopList = ["fish","orange","apple"];
print(shopList);

shopList[1] = "new fish";
print(shopList);

if intValue==90 {
    print("1")
}

if apples<oranges {
    print(1);
}
var optionalStr: String? = "hello"

var greeting  = "world"
if let testStr = optionalStr {
    greeting = "hello, \(greeting)"
}

//var optionalStr: String? = "str"
//
//var greeting  = "world"
//if let testStr = optionalStr {
//    greeting = "hello, \(greeting)"
//}