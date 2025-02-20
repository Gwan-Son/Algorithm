import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]; let S = input[1]
let arr = readLine()!.split(separator: " ").map{ Int($0)! }

var end = 0
var sum = 0
var count = 0
var answer = Int.max

for i in 0..<N {
    while sum < S && end < N {
        sum += arr[end]
        end += 1
        count += 1
    }
    if sum >= S {
        answer = min(answer, count)
    }
    sum -= arr[i]
    count -= 1
}

answer == Int.max ? print(0) : print(answer)