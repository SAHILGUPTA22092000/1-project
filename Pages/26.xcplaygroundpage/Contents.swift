//: [Previous](@previous)

import Foundation

class Student
{
    var m=6
    var marks : Int {
        get
        {
            return m
        }
        set(newMarks)
        {
            m=newMarks*2
        }
    }
}

var l=Student()
var t=l.marks
print(t)
l.marks=5
print(l.marks)
print(l.m)
