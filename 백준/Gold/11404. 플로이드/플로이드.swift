import Foundation

let INF = 1_234_567_89

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var board: [[Int]] = Array(repeating: Array(repeating: INF, count: n), count: n)

for i in 0..<n {
    board[i][i] = 0
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board[input[0] - 1][input[1] - 1] = min(input[2], board[input[0] - 1][input[1] - 1])
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            board[i][j] = min(board[i][j], board[i][k] + board[k][j])
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if board[i][j] == INF {
            board[i][j] = 0
        }
    }
}

board.forEach {
    $0.forEach {
        print($0, terminator: " ")
    }
    print()
}
