import Foundation

let N = Int(readLine()!)!

var area = [[Int]](repeating: [], count: N)
var maxArea = 0
var maxHeight = 0

let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)

for i in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let height = input.max()!
    if maxHeight < height {
        maxHeight = height
    }
    area[i] = input
}

func bfs(_ x: Int, _ y: Int, _ height: Int) {
    var queue = [(x, y)]
    
    visited[x][y] = true
    while !queue.isEmpty {
        let (curX, curY) = queue.removeFirst()
        for direction in directions {
            let nextX = curX + direction.0
            let nextY = curY + direction.1
            if nextX >= 0 && nextX < N && nextY >= 0 && nextY < N {
                if area[nextX][nextY] > height && !visited[nextX][nextY] {
                    visited[nextX][nextY] = true
                    queue.append((nextX, nextY))
                }
            }
        }
    }
}

for height in -1...maxHeight {
    visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
    var areaCnt = 0
    for i in 0..<N {
        for j in 0..<N {
            if area[i][j] > height && !visited[i][j] {
                bfs(i, j, height)
                areaCnt += 1
            }
        }
    }
    maxArea = max(maxArea, areaCnt)
}

print(maxArea)
