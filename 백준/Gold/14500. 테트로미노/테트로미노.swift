import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let m = input[0]
let n = input[1]

var board: [[Int]] = Array(repeating: [], count: m)

let shapes: [[(Int,Int)]] = [
    [(0,1),(0,2),(0,3)],[(1,0),(2,0),(3,0)],
    [(0,1),(1,0),(1,1)],
    [(1,0),(1,1),(2,1)], [(0,-1), (1,-1), (1,-2)],
    [(1,0), (1,-1), (2,-1)],[(0,1), (1,1), (1,2)],
    [(1,0), (2,0), (2,1)], [(0,1), (0,2), (1,0)],
    [(0,1),(1,1), (2,1)], [(0,1), (0,2), (-1,2)],
    [(1,0),(2,0),(2,-1)],[(0,1),(0,2),(1,2)],
    [(1,0),(2,0),(0,1)], [(1,0),(1,1),(1,2)],
    [(1,0),(1,1),(1,-1)], [(1,0),(1,1),(2,0)],
    [(0,-1),(1,0),(0,1)],[(0,1),(-1,1),(1,1)]
]

func checkTetromino(_ x: Int, _ y: Int, _ shape: [(Int,Int)]) -> Int {
    var value = board[x][y]
    for (dx, dy) in shape {
        let nx = x + dx
        let ny = y + dy
        if 0 <= nx && nx < m && 0 <= ny && ny < n {
            value += board[nx][ny]
        } else {
            return 0
        }
    }
    return value
}

for i in 0..<m {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    board[i] = line
}

// 최댓값
var result = 0

for i in 0..<m {
    for j in 0..<n {
        for shape in shapes {
            let temp = checkTetromino(i, j, shape)
            result = max(result, temp)
        }
    }
}

print(result)