import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]

var contestCosts = [Int]()
for _ in 0..<n {
    contestCosts.append(Int(readLine()!)!)
}

var voteCounts = Array(repeating: 0, count: n)

for _ in 0..<m {
    let budget = Int(readLine()!)!
    
    for i in 0..<n {
        if contestCosts[i] <= budget {
            voteCounts[i] += 1
            break
        }
    }
}

var maxVotes = -1
var winnerIndex = 0

for i in 0..<n {
    if voteCounts[i] > maxVotes {
        maxVotes = voteCounts[i]
        winnerIndex = i + 1
    }
}

print(winnerIndex)
