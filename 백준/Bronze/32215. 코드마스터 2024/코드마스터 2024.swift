import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0], m = input[1], k = input[2]

print(m * k + m)
