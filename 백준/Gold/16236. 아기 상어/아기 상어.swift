import Foundation

let n = Int(readLine()!)!
var board: [[Int]] = []
let directions = [(-1, 0), (0, -1), (1, 0), (0, 1)]

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    board.append(line)
}

var answer = 0
var eaten = 0
// shark - x, y, size
var shark: (Int, Int, Int) = (0, 0, 2)

// findShark
for i in 0..<n {
    for j in 0..<n {
        if board[i][j] == 9 {
            shark = (i, j, 2)
            break
        }
    }
}

func isEatableFish(_ size: Int) -> Bool {
    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] < size && board[i][j] != 0 {
                return true
            }
        }
    }

    return false
}

func bfs(_ x: Int, _ y: Int, _ size: Int) -> (Int, Int, Int) {
    var queue: [(Int, Int, Int)] = [(x, y, 0)]
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    var fish: [(Int, Int, Int)] = []
    visited[x][y] = true

    while !queue.isEmpty {
        let (curX, curY, curLen) = queue.removeFirst()
        for direction in directions {
            let nextX = curX + direction.0
            let nextY = curY + direction.1
            if (0..<n).contains(nextX) && (0..<n).contains(nextY) {
                if board[nextX][nextY] <= size && !visited[nextX][nextY] {
                    if (1..<size).contains(board[nextX][nextY]) {
                        fish.append((nextX, nextY, curLen + 1))
                    }
                    visited[nextX][nextY] = true
                    queue.append((nextX, nextY, curLen + 1))
                }
            }
        }
    }

    // sort fish
    fish.sort { a,b in
        if a.2 != b.2 {
            return a.2 < b.2
        } else {
            if a.0 != b.0 {
                return a.0 < b.0
            } else {
                return a.1 < b.1
            }
        }
    }
    if !fish.isEmpty {
        let moveShark = fish.first!
        answer += moveShark.2
        eaten += 1
        board[moveShark.0][moveShark.1] = 9
        board[x][y] = 0
        return moveShark
    }
    return (-1, -1, -1)
}

while isEatableFish(shark.2) {
    let (nextX, nextY, _) = bfs(shark.0, shark.1, shark.2)
    if nextX == -1 && nextY == -1 {
        break
    }
    shark.0 = nextX
    shark.1 = nextY
    if eaten == shark.2 {
        eaten = 0
        shark.2 += 1
    }
}

print(answer)