import Foundation

let N = Int(readLine()!)!

var dp: [Int64] = [1,1]

if N < 2 {
    print(dp[N])
} else {
    for i in 2...N {
        dp.append((dp[i - 1] + dp[i - 2] + 1))
    }
    print(dp[N]%1000000007)
}