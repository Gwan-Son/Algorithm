import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let s = input[0], t = input[1], d = input[2]

print(t * (d / (s * 2)))