//: [Previous](@previous)

import Foundation

let digits = [0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five", 6:"Six" ,7:"Seven", 8:"Eight", 9:"Nine"]
let numbers = [22,9,2000]
let strings = numbers.compactMap{
    (n)->String in
    var number=n
    var output=""
    repeat{
        
        guard let v = digits[number%10] else { return "empty"
        }
        output = v + output
        number = number / 10
    }while(number>0)
    return output
}
print(strings)
// compact map
// filter
//flat map
// string to int 
