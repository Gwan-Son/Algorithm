import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var maps: [[Int]] = Array(repeating: [], count: n)
var visited: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
var start: (Int, Int) = (0, 0)

for i in 0..<n {
    let temp = readLine()!.split(separator: " ").map{ Int($0)! }
    if temp.contains(2) {
        start = (i, temp.firstIndex(of: 2)!)
    }
    maps[i] = temp
}

func bfs(_ x: Int, _ y: Int) {
    var queue = [(x, y)]
    visited[x][y] = 0
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()

        for direction in directions {
            let nextX = x + direction.0
            let nextY = y + direction.1
            
            if nextX < 0 || nextX >= n || nextY < 0 || nextY >= m {
                continue
            }
            
            if maps[nextX][nextY] == 0 {
                continue
            }
            
            if maps[nextX][nextY] == 1 && visited[nextX][nextY] == 0{
                visited[nextX][nextY] = visited[x][y] + 1
                queue += [(nextX, nextY)]
            }
        }
    }
    
}


bfs(start.0, start.1)

for i in 0..<n {
    for j in 0..<m {
        if visited[i][j] == 0 && maps[i][j] == 1 {
            visited[i][j] = -1
        }
    }
}

visited.forEach{
    $0.forEach{
        print($0, terminator: " ")
    }
    print()
}
