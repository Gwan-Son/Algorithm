import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var set: Set<String> = []
var answer = 0

for _ in 0..<n {
    set.insert(readLine()!)
}

for _ in 0..<m {
    let word = readLine()!
    answer += set.contains(word) ? 1 : 0
}

print(answer)
