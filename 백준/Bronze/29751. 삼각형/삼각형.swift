import Foundation

let input = readLine()!.split(separator: " ").map{ Double(String($0))! }
let w = input[0], h = input[1]

print(String(format: "%.1f", w * h / 2.0))
