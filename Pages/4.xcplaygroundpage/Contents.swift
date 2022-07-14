//: [Previous](@previous)

import Foundation

func greeting(name: String)->String{
    var greeting = "Hello \(name), How are you?"
    return greeting
}
var str=greeting(name: "X")
print(str)
print(greeting(name: "Y"))
