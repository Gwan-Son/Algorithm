import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let m = input[0]
let n = input[1]
let h = input[2]
var count = 0
let directions = [(1,0,0), (-1,0,0), (0,1,0), (0,-1,0), (0,0,1), (0,0,-1)]

var tomatos: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: m), count: n), count: h)


for i in 0..<h {
    for j in 0..<n {
        let line = readLine()!.split(separator: " ").map{ Int($0)! }
        tomatos[i][j] = line
    }
}

var queue = [(Int, Int, Int)]()

func bfs() {
    var index = 0
    
    while index < queue.count {
        let (x, y, z) = queue[index]
        index += 1
        for direction in directions {
            let nextX = x + direction.0
            let nextY = y + direction.1
            let nextZ = z + direction.2
            if nextX < 0 || nextX >= h || nextY < 0 || nextY >= n || nextZ < 0 || nextZ >= m {
                continue
            }
            if tomatos[nextX][nextY][nextZ] == 0 {
                tomatos[nextX][nextY][nextZ] = tomatos[x][y][z] + 1
                queue.append((nextX, nextY, nextZ))
            }
        }
    }
}

for i in 0..<h {
    for j in 0..<n {
        for k in 0..<m {
            if tomatos[i][j][k] == 1 {
                queue.append((i, j, k))
            }
        }
    }
}

bfs()

for i in 0..<h {
    for j in 0..<n {
        for k in 0..<m {
            if tomatos[i][j][k] == 0 {
                print(-1)
                exit(0)
            }
            count = max(count, tomatos[i][j][k])
        }
    }
}

print(count == 1 ? 0 : count - 1)
