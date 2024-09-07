import Foundation

let T = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 12)

func plusDP(_ n : Int) {
    if n == 1 {
        dp[1] = 1
        return
    }
    if n == 2 {
        dp[2] = 2
        return
    }
    if n == 3 {
        dp[3] = 4
        return
    }
    dp[n] = dp[n-1] + dp[n-2] + dp[n-3]
}

for i in 1...11{
    plusDP(i)
}

for _ in 0..<T {
    let input = Int(readLine()!)!
    print(dp[input])
}
