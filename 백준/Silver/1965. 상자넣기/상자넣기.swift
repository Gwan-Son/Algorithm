let N = Int(readLine()!)!

var dp = Array(repeating: 1, count: N)

let boxes = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<N {
    for j in 0..<i {
        if boxes[i] > boxes[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)