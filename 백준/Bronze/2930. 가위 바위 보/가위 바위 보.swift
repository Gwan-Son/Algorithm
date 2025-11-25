import Foundation

func checkWin(base: Character, fr: Character) -> Int {
    if base == "S" { // Scissors
        if fr == "S" { return 1 }
        if fr == "P" { return 2 }
        if fr == "R" { return 0 }
    }
    if base == "P" { // Paper
        if fr == "S" { return 0 }
        if fr == "P" { return 1 }
        if fr == "R" { return 2 }
    }
    if base == "R" { // Rock
        if fr == "S" { return 2 }
        if fr == "P" { return 0 }
        if fr == "R" { return 1 }
    }
    return 0
}

let r = Int(readLine()!)!
var sk = readLine()!.map{ Character(String($0)) }
let n = Int(readLine()!)!
var friends = [[Character]]()

for _ in 0..<n {
    friends.append(readLine()!.map{ Character(String($0)) })
}

var score = 0
var maxScore = 0
for j in 0..<r {
    var arr = [0, 0, 0] // S, P, R
    for i in 0..<n {
        arr[0] += checkWin(base: "S", fr: friends[i][j])
        arr[1] += checkWin(base: "P", fr: friends[i][j])
        arr[2] += checkWin(base: "R", fr: friends[i][j])

        score += checkWin(base: sk[j], fr: friends[i][j])
    }
    maxScore += max(arr[0], max(arr[1], arr[2]))
}

print(score)
print(maxScore)
