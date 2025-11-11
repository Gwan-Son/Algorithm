import Foundation

let a = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)
let b = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)

print(max(a, b))
