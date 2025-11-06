import Foundation

var result: Double = 0

let pi: Double = 3.141592

let d1 = Double(readLine()!)!

let d2 = Double(readLine()!)!

result = (d1 * 2) + (d2 * 2) * pi

print(String(format: "%.6f", result))
