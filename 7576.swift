import Foundation

struct Point {
    let x: Int
    let y: Int
}

func bfs(_ box: inout [[Int]], _ M: Int, _ N: Int) -> Int {
    let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]  // 방향 (하, 상, 우, 좌)
    var queue = [Point]()
    var days = -1

    // 초기 익은 토마토의 위치를 큐에 추가
    for i in 0..<N {
        for j in 0..<M {
            if box[i][j] == 1 {
                queue.append(Point(x: i, y: j))
            }
        }
    }

    // BFS 진행
    while !queue.isEmpty {
        days += 1
        var nextQueue = [Point]()
        
        for point in queue {
            for (dx, dy) in directions {
                let nx = point.x + dx
                let ny = point.y + dy
                if nx >= 0 && nx < N && ny >= 0 && ny < M && box[nx][ny] == 0 {
                    box[nx][ny] = 1  // 토마토가 익음
                    nextQueue.append(Point(x: nx, y: ny))
                }
            }
        }
        
        queue = nextQueue
    }

    // 익지 않은 토마토가 있는지 확인
    for row in box {
        if row.contains(0) {
            return -1
        }
    }

    return days
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]

var tomatos: [[Int]] = []

for _ in 0..<N {
    tomatos.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let minDays = bfs(&tomatos, M, N)
print(minDays)
