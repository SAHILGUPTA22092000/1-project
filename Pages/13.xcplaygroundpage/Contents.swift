//: [Previous](@previous)

import Foundation

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

square.center = Point(x: 20.0, y: 20.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
print("initialsquare.origin is now at (\(initialSquareCenter.x), \(initialSquareCenter.y))")

var q = Point(x: 40, y: 40)
var w = Size(width: 50, height: 50)
var rec = Rect(origin: q, size: w)
let ini = rec.center
print("rec.origin is now at (\(rec.origin.x), \(rec.origin.y))")

rec.center=Point(x: 80, y: 30)
print("rec.origin is now at (\(rec.origin.x), \(rec.origin.y))")
q.x = 20
q.y = 20
print("rec.origin is now at (\(rec.origin.x), \(rec.origin.y))")
rec.origin=q
print("rec.origin is now at (\(rec.origin.x), \(rec.origin.y))")
w.width=10
w.height=10
rec.size=w
rec.center=q
print("rec.origin is now at (\(rec.origin.x), \(rec.origin.y))")

