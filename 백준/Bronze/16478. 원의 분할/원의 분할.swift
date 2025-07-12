import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1], c = input[2]

let mulAC = a * c
let result: Double = Double(mulAC) / Double(b)
print(result)
