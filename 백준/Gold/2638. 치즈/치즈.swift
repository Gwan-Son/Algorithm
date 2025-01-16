import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let M = input[1]
var board = [[Int]](repeating: [], count: N)
let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]
var result = 0

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    board[i] = line
}
while true {
    var queue = [[0, 0]]
    var visited = [[Int]](repeating: [Int](repeating: -1, count: M), count: N)
    visited[0][0] = 0
    var idx = 0
    var check = false
    while idx < queue.count {
        let cur = queue[idx]
        idx += 1
        for direction in directions {
            let nextX = cur[0] + direction.0
            let nextY = cur[1] + direction.1
            if nextX < 0 || nextX >= N || nextY < 0 || nextY >= M {
                continue
            }
            if visited[nextX][nextY] == -1 {
                if board[nextX][nextY] == 0 {
                    visited[nextX][nextY] = 0
                    queue.append([nextX, nextY])
                } else {
                    visited[nextX][nextY] = 1
                }
            } else {
                if board[nextX][nextY] == 1 {
                    visited[nextX][nextY] += 1
                }
            }
        }
    }
    for i in 0..<N {
        for j in 0..<M {
            if visited[i][j] >= 2 {
                board[i][j] = 0
                check = true
            }
        }
    }
    if !check {
        print(result)
        break
    }
    result += 1
}
