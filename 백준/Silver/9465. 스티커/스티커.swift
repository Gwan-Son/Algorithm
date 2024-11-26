import Foundation

let T = Int(readLine()!)!

for _ in 1...T {
    let n = Int(readLine()!)!
    var sticker = [[Int]](repeating: [], count: 2)
    for i in 0..<2 {
        sticker[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
    }
    
    var dp = Array(repeating: Array(repeating: 0, count: n), count: 2)
    if n != 1 {
        dp[0][0] = sticker[0][0]
        dp[0][1] = sticker[0][1]
        dp[1][0] = sticker[1][0]
        dp[1][1] = sticker[1][1]
    } else {
        dp[0][0] = sticker[0][0]
        dp[1][0] = sticker[1][0]
    }
    
    for i in 1..<n {
        dp[0][i] = max(dp[0][i - 1], dp[1][i - 1] + sticker[0][i])
        dp[1][i] = max(dp[1][i - 1], dp[0][i - 1] + sticker[1][i])
    }
    
    print(max(dp[0][n - 1], dp[1][n - 1]))
}
