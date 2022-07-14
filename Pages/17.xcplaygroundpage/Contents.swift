//: [Previous](@previous)

import Foundation

class Starship {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        guard let a = prefix else {
            return name
        }
        return a + " " + name
    }
}
var n = Starship(name: "Enterprise", prefix: "USS")
print(n.fullName)

