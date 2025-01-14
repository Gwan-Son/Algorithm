import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0]
let b = input[1]

print(String(n, radix: b).uppercased())
