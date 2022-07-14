//: [Previous](@previous)

import Foundation

func minmaxvalue(array: [Int]) -> (Int, Int)? {
    guard !array.isEmpty else { return nil }
    var cmin=array[0]
    var cmax=array[0]
    for value in array{
        if(value>cmax)
        {
            cmax=value
        }
        else if (value<cmin)
        {
            cmin=value
        }
    }
    return (cmin,cmax)
}

var a = [4,6,1,0,33,9,21,52,66,3,-1,5]
if let b = minmaxvalue(array: a){
    print("min is \(b.0) and max is \(b.1)")
}
