import Foundation

if let n = Int(readLine()!) {
	let mod = 1_000_000_000
    let allUsed: UInt16 = 1 << 10 - 1

    var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 1 << 10), count: 10), count: n + 1)

    for i in 1...9 {
        dp[1][i][(1 << i)] = 1
    }

    for i in stride(from: 2, through: n, by: 1) {
        for j in 0...9 {
            for mask in 0..<(1 << 10) {
                let newMask = mask | (1 << j)
                if j > 0 {
                    dp[i][j][newMask] = (dp[i][j][newMask] + dp[i - 1][j - 1][mask]) % mod
                }

                if j < 9 {
                    dp[i][j][newMask] = (dp[i][j][newMask] + dp[i - 1][j + 1][mask]) % mod
                }
            }
        }
    }

    var result = 0
    for i in 0...9 {
        result = (result + dp[n][i][Int(allUsed)]) % mod
    }

    print(result)
}
