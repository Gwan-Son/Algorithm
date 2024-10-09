import Foundation

let n = Int(readLine()!)!

var task: [[Int]] = Array(repeating: [], count: n)
var dp: [Int] = Array(repeating: 0, count: n + 1)

for i in 0..<n {
    task[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

for i in 0..<n {
    for j in stride(from: task[i][0] + i, to: n + 1, by: 1) {
        if dp[j] < dp[i] + task[i][1] {
            dp[j] = dp[i] + task[i][1]
        }
    }
}

print(dp.max()!)