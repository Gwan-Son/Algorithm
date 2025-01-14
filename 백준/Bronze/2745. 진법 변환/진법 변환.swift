import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }
let n = input[0]
let b = Int(input[1])!

print(Int(n, radix: b)!)