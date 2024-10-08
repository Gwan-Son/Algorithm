let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dp: [Int] = Array(repeating: 0, count: N)

for i in 0..<N {
    dp[i] = arr[i]
    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j] + arr[i])
        }
    }
}


print(dp.max()!)