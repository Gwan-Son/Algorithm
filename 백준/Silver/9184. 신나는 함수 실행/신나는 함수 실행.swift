import Foundation

var dp = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 1, count: 21), count: 21), count: 21)
dp[0][0][0] = 1

for i in 1...20 {
    for j in 1...20 {
        for k in 1...20 {
            dp[i][j][k] = dp[i-1][j][k] + dp[i-1][j-1][k] + dp[i-1][j][k-1] - dp[i-1][j-1][k-1]
        }
    }
}

while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input[0] == -1 && input[1] == -1 && input[2] == -1 { break }
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    if a <= 0 || b <= 0 || c <= 0 {
        print("w(\(input[0]), \(input[1]), \(input[2])) = \(dp[0][0][0])")
    } else if a > 20 || b > 20 || c > 20 {
        print("w(\(input[0]), \(input[1]), \(input[2])) = \(dp[20][20][20])")
    } else {
        print("w(\(input[0]), \(input[1]), \(input[2])) = \(dp[a][b][c])")
    }
}
