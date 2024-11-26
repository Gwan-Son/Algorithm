import Foundation

let n = Int(readLine()!)!

var dp = [Int](repeating: 0, count: n + 1)
dp[0] = 1
dp[1] = 1

for i in stride(from: 2, through: n, by: 1) {
    dp[i] = (dp[i - 1] + dp[i - 2]) % 15746
}

print(dp[n])
