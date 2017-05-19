//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//常量和变量

//常量 let
let name = "liuweili"
//变量 var
var description = "description"

description = "new description"

//可以一次性创建多个变量、常量

let name1 = "lwlw",name2 = "lwl3"
var d1 = "d1",d2 = "d2"

print(d1,d2)


//类型标注 常量或变量名后面添加冒号及类型，如“name:String”
var welcomeMessage: String

welcomeMessage = "my message"

//也可以不写，有系统通过我们给的默认值推断
var message = "message" //是字符串

//可以一次定义多个同类型变量、常量，用逗号分开
var orages,apple,banana: String

//let 4Str = 4 //报错
let string4 = 5

let value = 1.25e2
print(value)


