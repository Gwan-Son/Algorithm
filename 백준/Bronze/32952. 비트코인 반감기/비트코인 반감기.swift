import Foundation

let input = readLine()!.split(separator: " ").map{ Int64($0)! }
var r = input[0], k = input[1], m = input[2]

var count = m / k

for _ in stride(from: 0, to: m / k, by: 1) {
    r /= 2
    if r == 0 { break }
}

print(r)