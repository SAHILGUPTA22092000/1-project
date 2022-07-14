//: [Previous](@previous)

import Foundation

func sumaverage(_ numbers: Double...)->(sum:Double,avg:Double)?{
    if numbers.count==0{
        return nil
    }
    var tsum: Double=0
    for n in numbers
    {
        tsum+=n
    }
    return(tsum,tsum/(Double(numbers.count)))
}
var ans=sumaverage(1,2,3,4,5,6,7,8,9,10)
if let a=ans{
    print("Total sum is \(a.sum) and average is \(a.avg)")
}
