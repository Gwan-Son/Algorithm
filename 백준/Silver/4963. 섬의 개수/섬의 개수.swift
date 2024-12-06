import Foundation

let directions = [(0,1), (1,0), (-1,0), (0,-1), (1,1), (-1,-1), (1,-1), (-1,1)]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: 50), count: 50)

func dfs(_ arr: [[Int]], _ x: Int, _ y: Int) {
    if arr[x][y] == 0 { return }
    
    for direction in directions {
        let nextX = x + direction.0
        let nextY = y + direction.1
        if nextX < 0 || nextX >= arr.count || nextY < 0 || nextY >= arr[0].count { continue }
        if arr[nextX][nextY] == 0 || visited[nextX][nextY] { continue }
        visited[nextX][nextY] = true
        dfs(arr, nextX, nextY)
    }
}

while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input == [0, 0] {
        break
    }
    var arr = [[Int]](repeating: [], count: input[1])
    for i in 0..<input[1] {
        arr[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
    }
    visited = [[Bool]](repeating: [Bool](repeating: false, count: input[0]), count: input[1])
    var answer = 0
    for i in 0..<input[1] {
        for j in 0..<input[0] {
            if !visited[i][j] && arr[i][j] == 1 {
                dfs(arr, i, j)
                answer += 1
            }
        }
    }
    print(answer)
}
