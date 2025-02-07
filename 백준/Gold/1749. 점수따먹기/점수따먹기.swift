import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]; let M = input[1]
var arr = [[Int]]()

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append(line)
}

var dp = [[Int]](repeating: [Int](repeating: 0, count: M + 1), count: N + 1)

for i in 1..<N+1 {
    for j in 1..<M+1 {
        dp[i][j] = arr[i - 1][j - 1] + dp[i - 1][j] + dp[i][j - 1] - dp[i - 1][j - 1]
    }
}

var answer = Int.min

for i in 1..<N + 1 {
    for j in 1..<M + 1 {
        for k in i..<N + 1 {
            for l in j..<M + 1 {
                let temp = dp[k][l] - dp[i - 1][l] - dp[k][j - 1] + dp[i - 1][j - 1]
                answer = max(answer, temp)
            }
        }
    }
}

print(answer)