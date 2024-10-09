import Foundation

let n = Int(readLine()!)!

var dp: [Int] = Array(repeating: 100, count: 50001)

dp[0] = 0
dp[1] = 1
for i in stride(from: 2, to: n + 1, by: 1) {
    let sqrtNum = sqrt(Double(i))
    if sqrtNum - Double(Int(sqrtNum)) == 0.0 {
        dp[i] = 1
    } else {
        for j in stride(from: 1, through: Int(sqrtNum), by: 1) {
            dp[i] = min(dp[i], dp[i - j * j] + 1)
        }
    }
}

print(dp[n])