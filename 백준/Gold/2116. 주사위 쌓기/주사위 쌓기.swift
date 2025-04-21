import Foundation

let n = Int(readLine()!)!
var dices: [[Int]] = []
var answer = 0

for _ in 0..<n {
    dices.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

func deleteDice(_ dice: inout [[Int]], _ index: Int, _ row: Int) {
    if index == 0 || index == 5 {
        dice[row].remove(at: 5)
        dice[row].remove(at: 0)
    } else if index == 1 || index == 3 {
        dice[row].remove(at: 3)
        dice[row].remove(at: 1)
    } else {
        dice[row].remove(at: 4)
        dice[row].remove(at: 2)
    }
}

func findDice(_ index: Int) -> Int {
    switch index {
    case 0:
        return 5
    case 1:
        return 3
    case 2:
        return 4
    case 3:
        return 1
    case 4:
        return 2
    case 5:
        return 0
    default:
        return 0
    }
}

func makeSum(_ dice: [[Int]]) -> Int {
	var sum = 0
    for i in 0..<dice.count {
        sum += dice[i].max()!
    }
    return sum
}

for i in (0...5) {
    var dice = dices
    var start = dice[0][i]
	deleteDice(&dice, i, 0)
    for j in 1..<n {
        let next = findDice(dice[j].firstIndex(of: start)!)
        start = dice[j][next]
        deleteDice(&dice, next, j)
    }
	answer = max(answer, makeSum(dice))
}

print(answer)