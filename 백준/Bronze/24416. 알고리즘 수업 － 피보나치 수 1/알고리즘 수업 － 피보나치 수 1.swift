let N = Int(readLine()!)!

let dpCount = N - 2
var recursionCount = 0

var dp: [Int] = [0,1,1,2,3]

for i in 5...N {
    dp.append(dp[i - 1] + dp[i - 2])
}

print(dp[N], dpCount)