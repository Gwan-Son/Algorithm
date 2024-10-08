import Foundation

let N = Int(readLine()!)!

var dp: [Int64] = [0,1,1]


for i in 3...90 {
    dp.append(dp[i - 1] + dp[i - 2])
}

print(dp[N])