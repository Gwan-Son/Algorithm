import Foundation

var board = [[Int]]()
var emptyPos = [(Int, Int)]()
var rowUsed = [Int](repeating: 0, count: 9)
var colUsed = [Int](repeating: 0, count: 9)
var boxUsed = [Int](repeating: 0, count: 9)

for i in 0..<9 {
    let line = readLine()!.map{ Int(String($0))! }
    board.append(line)
    for j in 0..<9 {
        if board[i][j] == 0 {
            emptyPos.append((i, j))
        } else {
            let v = board[i][j]
            rowUsed[i] |= 1 << (v - 1)
            colUsed[j] |= 1 << (v - 1)
            boxUsed[i / 3 * 3 + j / 3] |= 1 << (v - 1)
        }
    }
}

func boxIndex(_ r: Int, _ c: Int) -> Int {
    return (r / 3) * 3 + (c / 3)
}

var solved = false

func dfs(_ idx: Int) {
    if solved { return }
    if idx == emptyPos.count {
        for i in 0..<9 {
            var line = ""
            for j in 0..<9 {
                line.append(String(board[i][j]))
            }
            print(line)
        }
        solved = true
        return
    }

    let (r, c) = emptyPos[idx]
    let b = boxIndex(r, c)
    let used = rowUsed[r] | colUsed[c] | boxUsed[b]

    for v in 1...9 {
        let bit = 1 << (v - 1)
        if (used & bit) != 0 { continue }

        board[r][c] = v
        rowUsed[r] |= bit
        colUsed[c] |= bit
        boxUsed[b] |= bit

        dfs(idx + 1)
        if solved { return }

        board[r][c] = 0
        rowUsed[r] &= ~bit
        colUsed[c] &= ~bit
        boxUsed[b] &= ~bit
    }
}

dfs(0)