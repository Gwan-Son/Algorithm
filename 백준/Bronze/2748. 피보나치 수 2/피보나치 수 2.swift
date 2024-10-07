let N = Int(readLine()!)!

var dp: [Int] = [0,1]

for i in 2..<N+1 {
    dp.append(dp[i-1] + dp[i-2])
}

print(dp[N])