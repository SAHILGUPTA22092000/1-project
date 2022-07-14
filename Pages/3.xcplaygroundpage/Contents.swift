//: [Previous](@previous)

import Foundation

let str="2.15"
let start=str.firstIndex(of: ".") ?? str.endIndex
let str2=str[..<start]
print(str2)
let start2=str.index(start,offsetBy: 1)
let str3=str[start2..<str.endIndex]
print(str3)
let str4=str.split(separator: ".")
print(str4)
