import Foundation


var things: [Any] = []

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in return "Hello, \(name)" })


print(things)
print(type(of: things[6]))
var t : (String)->String = things[6] as! (String) -> String
var s = t("A")

print(s)
