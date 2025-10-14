import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let a = input[0], b = input[1], c = input[2]

print((b / a) * 3 * c)