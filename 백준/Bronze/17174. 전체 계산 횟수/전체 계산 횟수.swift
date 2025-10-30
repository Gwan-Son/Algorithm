import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var n = input[0]
let m = input[1]

var result = n

while n / m >= 1 {
    n /= m
    result += n
}

print(result)
