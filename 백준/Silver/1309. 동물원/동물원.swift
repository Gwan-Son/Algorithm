import Foundation

let n = Int(readLine()!)!

var dp = [Int](repeating: 0, count: n+1)

dp[0] = 3
dp[1] = 7

for i in stride(from: 2, to: n + 1, by: 1) {
    dp[i] = (dp[i-1] * 2 + dp[i-2]) % 9901
}

print(dp[n - 1])