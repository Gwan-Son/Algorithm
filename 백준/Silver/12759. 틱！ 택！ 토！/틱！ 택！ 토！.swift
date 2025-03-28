import Foundation

let startPlayer = Int(readLine()!)!
let player2 = startPlayer == 1 ? 2 : 1

var board1 = [[Bool]](repeating: [Bool](repeating: false, count: 3), count: 3)
var board2 = [[Bool]](repeating: [Bool](repeating: false, count: 3), count: 3)
var count = 0

func checkWin(_ board: [[Bool]]) -> Bool {

    for i in 0..<3 {
        // 가로
        if board[i][0] && board[i][1] && board[i][2] {
            return true
        }
        // 세로
        if board[0][i] && board[1][i] && board[2][i] {
            return true
        }
    }
    if board[0][0] && board[1][1] && board[2][2] {
        return true
    }
    if board[0][2] && board[1][1] && board[2][0] {
        return true
    }
    
    return false
}

while let input = readLine() {
    let input = input.split(separator: " ").map { Int($0)! }
    count += 1
    if count % 2 == 1 {
        board1[input[0] - 1][input[1] - 1] = true
    } else {
        board2[input[0] - 1][input[1] - 1] = true
    }
    
    
    if count == 9 {
        if checkWin(board1) {
            print(startPlayer)
            break
        } else {
            print("0")
            break
        }
    } else if count >= 5 {
        if count % 2 == 1 {
            if checkWin(board1) {
                print(startPlayer)
                break
            }
        } else {
            if checkWin(board2) {
                print(player2)
                break
            }
        }
    }
}