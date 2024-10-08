let input = readLine()!.split(separator: " ").map { Int($0)! }
// input[0] == N
// input[1] == K

var products: [[Int]] = Array(repeating: [], count: input[0])
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: input[0] + 1), count: input[1] + 1)

for i in 0..<input[0] {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    products[i] = temp
}

// 2차원 배열로 무게별 최대 가치
for i in 1...input[1] {
    for j in 1...input[0] {
        if i >= products[j - 1][0] {
            dp[i][j] = max(dp[i - products[j - 1][0]][j - 1] + products[j - 1][1], dp[i][j - 1])
        } else {
            dp[i][j] = max(dp[i][j - 1], dp[i - 1][j])
        }
    }
}

print(dp[input[1]].max()!)