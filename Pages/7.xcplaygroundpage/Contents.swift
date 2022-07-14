//: [Previous](@previous)

import Foundation

func add2num(_ num1: Int,_ num2: Int)->Int{
    return num1+num2
}
func sub2num(_ num1: Int,_ num2: Int)->Int{
    return num1-num2
}
func mul2num(_ num1: Int,_ num2: Int)->Int{
    return num1*num2
}
func div2num(_ num1: Int,_ num2: Int)->Int{
    if num2==0
    {
        return 0;
    }
    return num1/num2
}
func swap2num(_ num1: inout Int,_ num2:inout Int){
    let temp=num1
    num1=num2
    num2=temp
}
func printans(_ mathfunc: (Int,Int)->Int,_ num1: Int,_ num2: Int)
{
    print("Result is \(mathfunc(num1,num2))")
}
printans(add2num, 3, 4)
printans(mul2num, 3, 4)
printans(div2num, 8, 2)
printans(sub2num, 10, 4)
var q=4,w=9
swap2num(&q, &w)
print(q,w)
