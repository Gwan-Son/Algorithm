import Foundation

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

let INF = 1_000_000_000

func getPower(from: Int, to: Int) -> Int {
    if from == 0 { return 2 }
    if from == to { return 1 }
    if abs(from - to) == 2 { return 4 }
    return 3
}

var dp = [[Int]](repeating: [Int](repeating: INF, count: 5), count: 5)
dp[0][0] = 0

for i in 0..<arr.count {
    let target = arr[i]
    if target == 0 { break }
    
    var nextDP = [[Int]](repeating: [Int](repeating: INF, count: 5), count: 5)
    
    for left in 0..<5 {
        for right in 0..<5 {
            if dp[left][right] != INF {
                if target != right {
                    nextDP[target][right] = min(nextDP[target][right], dp[left][right] + getPower(from: left, to: target))
                }
                
                if target != left {
                    nextDP[left][target] = min(nextDP[left][target], dp[left][right] + getPower(from: right, to: target))
                }
            }
        }
    }
    dp = nextDP
}

var minPower = INF
for left in 0..<5 {
    for right in 0..<5 {
        minPower = min(minPower, dp[left][right])
    }
}

print(minPower)
