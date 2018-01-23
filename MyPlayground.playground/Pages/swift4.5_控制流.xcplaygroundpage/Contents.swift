//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


//根据某个刻度累加
let minuteInterval = 10
for trick in stride(from: 0, to: 100, by: minuteInterval) {
    print(trick)
}

for trick in stride(from: 0, through: 100, by: minuteInterval) {
    print(trick)
}



