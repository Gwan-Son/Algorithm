let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dp: [Int] = Array(repeating: 1, count: N)

for i in 0..<N {
    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)