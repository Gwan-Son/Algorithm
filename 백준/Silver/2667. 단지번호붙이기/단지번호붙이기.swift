import Foundation

let N = Int(readLine()!)!
var apt: [[Int]] = Array(repeating: [], count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
var counts: [Int] = []

for i in 0..<N {
    apt[i] = readLine()!.map{ Int(String($0))! }
}

var count = 0
func dfs(x: Int, y: Int) {
    if x < 0 || y < 0 || x >= N || y >= N { return }
    if visited[x][y] { return }
    if apt[x][y] == 0 { return }
    
    visited[x][y] = true
    count += 1
    dfs(x: x - 1, y: y)
    dfs(x: x + 1, y: y)
    dfs(x: x, y: y - 1)
    dfs(x: x, y: y + 1)
    
}

for i in 0..<N {
    for j in 0..<N {
        dfs(x: i, y: j)
        if count >= 1 {
            counts.append(count)
            count = 0
        }
    }
}

print(counts.count)
counts.sorted().forEach{ print($0) }

