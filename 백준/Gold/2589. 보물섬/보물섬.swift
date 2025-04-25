import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]

var board = [[String]]()
let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var answer = 0

for _ in 0..<n {
    let line = readLine()!.map{ String($0) }
    board.append(line)
}

func bfs(_ x: Int, _ y: Int) {
    var queue: [(Int, Int)] = [(x, y)]
    var visited = [[Int]](repeating: [Int](repeating: -1, count: m), count: n)
	visited[x][y] = 0

    while !queue.isEmpty {
        let cur = queue.removeFirst()

        for direction in directions {
            let nextX = cur.0 + direction.0
            let nextY = cur.1 + direction.1
            if (0..<n).contains(nextX) && (0..<m).contains(nextY) && board[nextX][nextY] == "L" && visited[nextX][nextY] == -1 {
                visited[nextX][nextY] = visited[cur.0][cur.1] + 1
                queue.append((nextX, nextY))
                answer = max(answer, visited[nextX][nextY])
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if board[i][j] == "L" {
            bfs(i, j)
        }
    }
}

print(answer)