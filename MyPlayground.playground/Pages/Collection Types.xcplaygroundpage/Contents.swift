//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//Array
var stringArray:[String] = [];

stringArray.append("1");
stringArray.append("2");
print(stringArray);


var value = stringArray[0];
if (value == "1") {
    print(1);
}

var intArray = [1,2,3];

var commonArrayy = stringArray;

stringArray[0] = "111";

print(commonArrayy)


commonArrayy.insert("123", at: 0);

commonArrayy.insert("1111111", at: 0);

commonArrayy.remove(at: 0);

commonArrayy;

for obj in commonArrayy {
    print(obj.appending(","));
}

for (index, value) in commonArrayy.enumerated() {
    
    var str = value;
    if index != (commonArrayy.count-1) {
        str = str.appending(",")
    }
    print(str)
}

commonArrayy.removeLast()
commonArrayy.removeAll()


//Set

var letters = Set<Character>();

letters.count

letters.insert("a")
letters

letters.removeAll()

if letters.isEmpty {
    print("set is empty")
}

var nonsSet : Set<String> = ["1","3","2"];

nonsSet.insert("wo");

nonsSet

for obj in nonsSet {
    print(obj);
}

print("-------------")

for obj in nonsSet {
    print(obj);
}

print("-------------")

for obj in nonsSet.sorted() {
    print(obj);
}


