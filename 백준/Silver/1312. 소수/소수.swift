import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var A = input[0]
var B = input[1]
var N = input[2]

var result = 0
for _ in 0..<N {
    A = (A % B) * 10
    result = A / B
}

print(result)

