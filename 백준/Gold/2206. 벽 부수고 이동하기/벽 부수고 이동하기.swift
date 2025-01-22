import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0]; let m = input[1]
var result = -1
var board = [[Int]]()
var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), count: 2)
let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]

for _ in 0..<n {
    board.append(readLine()!.map{ Int(String($0))! })
}

func bfs() {
    var queue: [(y: Int, x: Int, distance: Int, wall: Int)] = []
    queue.append((0, 0, 1, 0))
    var index = 0
    
    while queue.count > index {
        let cur = queue[index]
        
        if cur.y == n - 1 && cur.x == m - 1 {
            result = cur.distance
            return
        }
        
        for direction in directions {
            let ny = cur.y + direction.0
            let nx = cur.x + direction.1
            
            if !((0..<n) ~= ny && (0..<m) ~= nx) || visited[cur.wall][ny][nx] {
                continue
            }
            
            if board[ny][nx] == 0 {
                visited[cur.wall][ny][nx] = true
                queue.append((ny, nx, cur.distance + 1, cur.wall))
            }
            
            if board[ny][nx] == 1 && cur.wall == 0 {
                visited[cur.wall + 1][ny][nx] = true
                queue.append((ny, nx, cur.distance + 1, cur.wall + 1))
            }
        }
        index += 1
    }
}

bfs()

print(result)
