//: [Previous](@previous)

import Foundation

var h : Double = 4
var min : Double = 60
if(min==60)
{
    min=0
    h+=1
}
else if( h>12 || h<0 || min>60 || min<0)
{
    print("Wrong value")
}
var mindegree = min*6
var hd = h*30
if (h>(min/5))
{
    print(abs(hd-(mindegree)+min/2))
}
else{
        print(abs(mindegree-hd)-min/2)
    }
          

