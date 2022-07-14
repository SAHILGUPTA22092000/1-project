//: [Previous](@previous)

import Foundation
import Darwin

class Parent
{
    func getsome() {
        print("Parent")
    }
}
class Child : Parent{
    
    var pa : Int  {
        get {
            self.pa=6
            return self.pa
        }
        set(newPa){
            self.pa=newPa*2
        }
    }
}

var a = Child()
var b = Parent()
a.pa=5
print(a.pa)

