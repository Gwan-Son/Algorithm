import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var laboratory = [[Int]](repeating: [], count: n)
let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

for i in 0..<n {
    laboratory[i] = readLine()!.split(separator: " ").map { Int($0)! }
}


var result = 0

func dfs(_ count: Int) {
    if count == 3 {
        bfs()
        return
    }
    
    for i in 0..<n {
        for j in 0..<m {
            if laboratory[i][j] == 0 {
                laboratory[i][j] = 1
                dfs(count + 1)
                laboratory[i][j] = 0
            }
        }
    }
    
}

func bfs() {
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    var temp = laboratory
    var queue = [(Int, Int)]()
    for i in 0..<n {
        for j in 0..<m {
            if temp[i][j] == 2 {
                queue.append((i,j))
            }
        }
    }
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        for i in directions {
            let nx = current.0 + i.0
            let ny = current.1 + i.1
            
            if nx < 0 || nx >= n || ny < 0 || ny >= m {
                continue
            }
            
            if !visited[nx][ny] && temp[nx][ny] == 0 {
                visited[nx][ny] = true
                temp[nx][ny] = 2
                queue.append((nx, ny))
            }
        }
    }
    var count = 0
    for i in 0..<n {
        for j in 0..<m {
            if temp[i][j] == 0 {
                count += 1
            }
        }
    }
    result = max(result, count)
}

dfs(0)

print(result)
