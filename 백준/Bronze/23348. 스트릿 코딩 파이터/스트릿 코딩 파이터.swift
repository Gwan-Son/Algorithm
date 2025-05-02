import Foundation

let scores = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    var sum = 0
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let score = input[0] * scores[0] + input[1] * scores[1] + input[2] * scores[2]
        sum += score
    }
    answer = max(answer, sum)
}
print(answer)