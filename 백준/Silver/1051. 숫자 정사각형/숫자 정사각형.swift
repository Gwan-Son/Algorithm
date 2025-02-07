import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]; let M = input[1]
var answer = 1
var board = [[Int]]()

for _ in 0..<N {
    let line = readLine()!.map{ Int(String($0))! }
    board.append(line)
}

func check(_ num: Int, _ x: Int, _ y: Int) {
    for i in y..<M {
        if board[x][i] == num {
            if (0..<N) ~= (i - y + x) {
                if board[i - y + x][y] == num && board[i - y + x][i] == num {
                    answer = max(answer, (i - y + 1) * (i - y + 1))
                }
            }
        }
    }
}

for i in 0..<N {
    for j in 0..<M {
        let first = board[i][j]
        check(first, i, j)
    }
}

print(answer)