import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0], k = input[1]

let number = String(n, radix: k)

let numbers = number.split(separator: "0").map{ Int(String($0))! }.reduce(0, +)

print(String(numbers, radix: k))
