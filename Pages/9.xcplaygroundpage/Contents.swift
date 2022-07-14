//: [Previous](@previous)

import Foundation

var names = ["Aa","busd","usd","bit","eth","sol"]

var sortedname = names.sorted()
print(sortedname)
var sortedname2 = names.sorted(by:{ (s1:String,s2:String)->Bool in return s1>s2})
print(sortedname2)
sortedname=names.sorted(by: >)
print(sortedname)
sortedname=names.sorted(by: {$0>$1})
print(sortedname)

// sort even and odd num with even first then odd
var arraynum = [ 3,6,8,9,232,32,11,4,5,23,4,5,49,35,33,53,6,3,24]

func func2(s1:Int,s2: Int)->Bool{
    if (( (s1 % 2 == 0) && (s2 % 2 == 0)) || ( (s1 % 2 != 0) && (s2 % 2 != 0) ))
    {
        return s1<s2
    }
    if s1 % 2 == 0
    {
        return true
    }
    return false
}

var sortednum = arraynum.sorted(by: func2)

print(arraynum)
print(sortednum)
