import Foundation

func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
    var attackAndHeal: [[Int]] = Array(repeating: Array(repeating: 0, count: board[0].count + 1), count: board.count + 1)
    var count = 0
    
    for i in skill {
        attackAndHeal[i[1]][i[2]] += (i[0] == 1) ? -i[5] : i[5]
        attackAndHeal[i[3] + 1][i[4] + 1] += (i[0] == 1) ? -i[5] : i[5]
        attackAndHeal[i[3] + 1][i[2]] -= (i[0] == 1) ? -i[5] : i[5]
        attackAndHeal[i[1]][i[4] + 1] -= (i[0] == 1) ? -i[5] : i[5]
    }
    
    for i in 1..<attackAndHeal.count {
        for j in 0..<attackAndHeal[i].count {
            attackAndHeal[i][j] += attackAndHeal[i - 1][j]
        }
    }
    
    for i in 0..<attackAndHeal.count {
        for j in 1..<attackAndHeal[i].count {
            attackAndHeal[i][j] += attackAndHeal[i][j - 1]
        }
    }
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] + attackAndHeal[i][j] > 0 {
                count += 1
            }
        }
    }
    
    return count
}