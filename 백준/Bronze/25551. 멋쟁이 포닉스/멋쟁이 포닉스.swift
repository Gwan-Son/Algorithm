import Foundation

var minA = Int.max
var minB = Int.max

let mask = readLine()!.split(separator: " ").map{ Int(String($0))! }

let tshirt = readLine()!.split(separator: " ").map{ Int(String($0))! }

let pants = readLine()!.split(separator: " ").map{ Int(String($0))! }

minA = min(mask[0], tshirt[1], pants[0])

minB = min(mask[1], tshirt[0], pants[1])

print(min(minA, minB + 1) + min(minB, minA + 1))
