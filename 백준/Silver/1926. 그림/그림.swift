import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]

var count = 0
var maxSize = 0
var tempSize = 0

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var board: [[Int]] = []
let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(line)
}

func bfs(_ x: Int, _ y: Int) {
    var queue: [(Int, Int)] = [(x, y)]
    
    while !queue.isEmpty {
        let (curX, curY) = queue.removeFirst()
        
        for direction in directions {
            let nextX = curX + direction.0
            let nextY = curY + direction.1
            
            if nextX >= 0 && nextX < n && nextY >= 0 && nextY < m {
                if !visited[nextX][nextY] && board[nextX][nextY] == 1 {
                    visited[nextX][nextY] = true
                    queue.append((nextX, nextY))
                    tempSize += 1
                }
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if board[i][j] == 1 && !visited[i][j] {
            tempSize = 1
            visited[i][j] = true
            bfs(i, j)
            maxSize = max(maxSize, tempSize)
            count += 1
        }
    }
}

print(count)
print(maxSize)