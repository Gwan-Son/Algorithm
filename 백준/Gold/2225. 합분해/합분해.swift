import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]; let K = input[1]

var dp = [[Int]](repeating: [Int](repeating: 0, count: K + 1), count: N + 1)

for i in 0...K {
    dp[1][i] = i
}

for i in stride(from: 2, through: N, by: 1) {
    for j in stride(from: 1, through: K, by: 1) {
        dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % 1_000_000_000
    }
}

print(dp[N][K])
