import Foundation

let n = Int(readLine()!)!

var dp = [Int](repeating: 0, count: 31)
dp[0] = 1
dp[2] = 3

for i in stride(from: 4, through: 30, by: 2) {
	dp[i] = dp[i - 2] * dp[2]
    for j in stride(from: i - 4, through: 0, by: -2) {
        dp[i] = dp[i] + (dp[j] * 2)
    }
}

print(dp[n])