//: [Previous](@previous)

import Foundation

var i = 11
var about = " This number \(i) is "
switch i{
case 2,3,5,7,9,11,13,17,19: about+="a prime number";fallthrough
case 1,15: about+=" and a odd number "
case 0,4,6,8,10,12,14,16,18,20 : about+="and a even number ";fallthrough
default: about+="and an integer"
}
print(about)

