import Foundation

let t = Int(readLine()!)!

var dp = [Int](repeating: 0, count: 100001)
dp[1] = 1
dp[2] = 2
dp[3] = 3

for i in 4..<100001 {
    dp[i] = dp[i - 3] + (i / 2) + 1
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    print(dp[n])
}