import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var dp = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)

func binomial(_ n: Int, _ k: Int) -> Int {
    for i in 1...1000 {
        for j in 0...min(i, k) {
            if j == 0 || j == i {
                dp[i][j] = 1
            } else {
                dp[i][j] = (dp[i - 1][j] + dp[i - 1][j - 1]) % 10007
            }
        }
    }
    return dp[n][k]
}

print(binomial(input[0], input[1]))
