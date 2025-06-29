import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0] - 1, t = input[1], c = input[2], p = input[3]

let day = n / t
print(day * c * p)