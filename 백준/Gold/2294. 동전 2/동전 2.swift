import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]

var coins = [Int]()
var dp = [Int](repeating: 10001, count: 10001)
dp[0] = 0
for i in 0..<n {
    coins.append(Int(readLine()!)!)
    for j in stride(from: coins[i], through: k, by: 1) {
        dp[j] = min(dp[j], dp[j - coins[i]] + 1)
    }
}

if dp[k] == 10001 {
    print(-1)
} else {
    print(dp[k])
}
