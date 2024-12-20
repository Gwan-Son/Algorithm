import Foundation

let N = Int(readLine()!)!
var maxDp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: N + 1)
var minDp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: N + 1)
var score = [[Int]](repeating: [], count: N + 1)

for i in 1...N {
    score[i] = readLine()!.split(separator: " ").map { Int($0)! }
    
    // maxScore
    maxDp[i][0] = max(maxDp[i - 1][0], maxDp[i - 1][1]) + score[i][0]
    maxDp[i][1] = maxDp[i - 1].max()! + score[i][1]
    maxDp[i][2] = max(maxDp[i - 1][1], maxDp[i - 1][2]) + score[i][2]
    
    // minScore
    minDp[i][0] = min(minDp[i - 1][0], minDp[i - 1][1]) + score[i][0]
    minDp[i][1] = minDp[i - 1].min()! + score[i][1]
    minDp[i][2] = min(minDp[i - 1][1], minDp[i - 1][2]) + score[i][2]
}

print(maxDp[N].max()!, minDp[N].min()!)
