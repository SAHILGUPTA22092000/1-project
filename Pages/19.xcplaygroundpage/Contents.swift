//: [Previous](@previous)

import Foundation

protocol TextRepresentable {
    var textualDescription: String { get }
}
struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}
extension Hamster: TextRepresentable {}

let s = Hamster(name: "Si")
print(s.name)
print(s.textualDescription)
