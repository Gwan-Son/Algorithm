import Foundation

let T = Int(readLine()!)!

let directions = [(-2, 1), (-1, 2), (1, 2), (2, 1), (-2, -1), (-1, -2), (1, -2), (2, -1)]
var board = [[Int]]()
var visited = [[Bool]]()
func bfs(_ firstPos: (Int, Int), _ destPos: (Int, Int), _ boardSize: Int) {
    var queue = [(Int, Int)]()
    queue.append(firstPos)
    visited[firstPos.0][firstPos.1] = true
    
    while !queue.isEmpty {
        let pos = queue.removeFirst()
        let count = board[pos.0][pos.1]
        if pos == destPos {
            print(board[pos.0][pos.1])
            return
        }
        for direction in directions {
            let nextX = pos.0 + direction.0
            let nextY = pos.1 + direction.1
            
            if (0..<boardSize).contains(nextX) && (0..<boardSize).contains(nextY) {
                if !visited[nextX][nextY] {
                    visited[nextX][nextY] = true
                    queue.append((nextX, nextY))
                    board[nextX][nextY] = count + 1
                }
            }
        }
        
    }
}

for _ in 0..<T {
    let I = Int(readLine()!)!
    board = [[Int]](repeating: [Int](repeating: 0, count: I), count: I)
    visited = [[Bool]](repeating: [Bool](repeating: false, count: I), count: I)
    let firstPos = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let destPos = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    bfs((firstPos[0], firstPos[1]), (destPos[0], destPos[1]), I)
}
