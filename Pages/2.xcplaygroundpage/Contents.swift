import UIKit

var char = "&"
switch char{
case "a"..."z","A"..."Z": print("\(char) is a alphabet")
case "1"..."9" : print("\(char) is a number")
default: print("\(char) is a special character")
}




