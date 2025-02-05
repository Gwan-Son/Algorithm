import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0]; let m = input[1]

var memorys = readLine()!.split(separator: " ").map{ Int(String($0))! }
var costs = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dp = [[Int]](repeating: [Int](repeating: 0, count: costs.reduce(1, +)), count: n + 1)

for i in 1...n {
    for j in 0..<costs.reduce(1, +) {
        if j - costs[i - 1] >= 0 {
            dp[i][j] = dp[i - 1][j - costs[i - 1]] + memorys[i - 1]
        }
        dp[i][j] = max(dp[i][j], dp[i - 1][j])
    }
}

print(dp[n].firstIndex(where: { $0 >= m})!)