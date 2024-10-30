import Foundation

let N = Int(readLine()!)! // 집의 개수

var rgb: [[Int]] = [[0, 0, 0]]
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: N + 1)
var answer = Int.max

for _ in 0..<N {
    rgb.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 1 - R
dp[1][0] = rgb[1][0]
dp[1][1] = 1001
dp[1][2] = 1001

for i in 2...N {
    dp[i][0] = rgb[i][0] + min(dp[i-1][1], dp[i-1][2])
    dp[i][1] = rgb[i][1] + min(dp[i-1][0], dp[i-1][2])
    dp[i][2] = rgb[i][2] + min(dp[i-1][0], dp[i-1][1])
}

answer = min(answer, min(dp[N][1], dp[N][2]))

// 1 - G
dp[1][1] = rgb[1][1]
dp[1][0] = 1001
dp[1][2] = 1001

for i in 2...N {
    dp[i][0] = rgb[i][0] + min(dp[i-1][1], dp[i-1][2])
    dp[i][1] = rgb[i][1] + min(dp[i-1][0], dp[i-1][2])
    dp[i][2] = rgb[i][2] + min(dp[i-1][0], dp[i-1][1])
}

answer = min(answer, min(dp[N][0], dp[N][2]))
// 1 - B
dp[1][2] = rgb[1][2]
dp[1][0] = 1001
dp[1][1] = 1001

for i in 2...N {
    dp[i][0] = rgb[i][0] + min(dp[i-1][1], dp[i-1][2])
    dp[i][1] = rgb[i][1] + min(dp[i-1][0], dp[i-1][2])
    dp[i][2] = rgb[i][2] + min(dp[i-1][0], dp[i-1][1])
}

answer = min(answer, min(dp[N][0], dp[N][1]))

print(answer)
