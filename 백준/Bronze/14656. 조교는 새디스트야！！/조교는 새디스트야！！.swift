import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var answer = 0
for i in 0..<input.count {
    if input[i] != i + 1 {
        answer += 1
    }
}

print(answer)
