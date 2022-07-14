//: [Previous](@previous)

import Foundation

func choosefunc(_ boolans: Bool) -> (Int)->Int{
    func add1(_ input: Int)->Int{
        return input+1
    }
    func sub1(_ input: Int)->Int{
        return input-1
    }
    return boolans ? sub1 : add1
}
var num = 8
let movetozero=choosefunc(num>0)
while (num != 0) {
    print("Current num is \(num)")
    num=movetozero(num)
}
print("0")
