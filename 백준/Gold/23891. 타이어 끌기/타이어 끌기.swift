import Foundation

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0], M = input[1]

    let INF = Int(2e9)
    var dp = Array(repeating: -INF, count: M + 1)
    dp[0] = 0

    for _ in 1...N {
        let tireInput = readLine()!.split(separator: " ").map { Int($0)! }
        let score = tireInput[0]
        let opponentCount = tireInput[1]

        var newDp = Array(repeating: -INF, count: M + 1)

        for j in 0...M {
            if dp[j] == -INF { continue }

            if j + opponentCount + 1 <= M {
                newDp[j + opponentCount + 1] = max(newDp[j + opponentCount + 1], dp[j] + score)
            }

            if j + opponentCount <= M {
                newDp[j + opponentCount] = max(newDp[j + opponentCount], dp[j])
            }

            newDp[j] = max(newDp[j], dp[j] - score)
        }

        dp = newDp
    }

    let maxScoreDiff = dp.max()!

    if maxScoreDiff > 0 {
        print("W")
    } else if maxScoreDiff == 0 {
        print("D")
    } else {
        print("L")
    }
}

solution()
