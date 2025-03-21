import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []
var leftTeam = [Int](1...n)
var answer: Int = Int.max
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(line)
}

var scores = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)

for i in 0..<n {
    for j in i..<n {
        scores[i + 1][j + 1] = arr[i][j] + arr[j][i]
    }
}

func calcScore(_ a: [Int], _ b: [Int]) {
    var aScore = 0
    var bScore = 0
    for i in a {
        for j in a where i != j {
            aScore += scores[i][j]
        }
    }
    for i in b {
        for j in b where i != j {
            bScore += scores[i][j]
        }
    }
    answer = min(answer, abs(aScore - bScore))
}

// choose team - n/2
func mkTeam(_ team: [Int], _ start: Int) {
    if team.count == n/2 {
        let oppsiteTeam = leftTeam.filter{ !team.contains($0) }
        calcScore(team, oppsiteTeam)
        return
    }
    for i in start..<n+1 {
        if team.isEmpty && i != 1 { return }
        mkTeam(team + [i], i + 1)
    }
}

mkTeam([], 1)

print(answer)