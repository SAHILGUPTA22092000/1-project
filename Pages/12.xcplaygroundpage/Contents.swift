//: [Previous](@previous)

import Foundation

var digits = [
"0" : 0 , "1":1, "2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9
]
var stringn = ["1","2","Two","4"]
let number = stringn.compactMap{
    (i:String)->Int? in
    guard let a=Int(i) else { return nil}
    return a
}
let number2 = stringn.compactMap{Int($0)}

print(number)
print(number2)
