let n = Int(readLine()!)!

var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: n + 1)

for i in 1...9 {
    dp[1][i] = 1
}

if n > 1 {
    for i in 2...n {
        for j in 0...9 {
            if j == 0 {
                dp[i][j] = dp[i - 1][j + 1] % 1_000_000_000
            } else if j == 9 {
                dp[i][j] = dp[i - 1][j - 1] % 1_000_000_000
            } else {
                dp[i][j] = (dp[i - 1][j - 1] + dp[i - 1][j + 1]) % 1_000_000_000
            }
        }
    }
}

var sum = 0
for i in dp[n] {
    sum += i
}

print(sum % 1_000_000_000)
