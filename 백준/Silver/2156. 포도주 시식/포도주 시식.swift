import Foundation

let n = Int(readLine()!)!

var wine: [Int] = [0]
var dp: [Int] = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    wine.append(Int(readLine()!)!)
}
if n < 3 {
    print(wine.reduce(0, +))
} else {
    dp[1] = wine[1]
    dp[2] = wine[1] + wine[2]

    for i in 3...n {
        dp[i] = max(dp[i - 1],max(dp[i - 2], dp[i - 3] + wine[i - 1]) + wine[i])
    }

    print(dp[n])
}