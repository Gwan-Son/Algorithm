import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let a = input[0]
let b = input[1]

var answer = 1
var cur = a - 1

for _ in 1...b {
    answer += cur
    cur += (a - 2)
}

print(answer)