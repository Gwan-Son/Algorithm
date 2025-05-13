import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]

var graphs: [Int: [Int]] = [:]
var lengths = [[Int]](repeating: [Int](repeating: Int.max, count: n + 1), count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for i in 1...n {
    graphs[i] = []
}

for _ in 0..<n - 1 {
    let nodes = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let x = nodes[0], y = nodes[1], length = nodes[2]
    graphs[x]!.append(y)
    graphs[y]!.append(x)
    lengths[x][y] = length
    lengths[y][x] = length
}

func dfs(_ start: Int, _ end: Int, _ length: Int) {
    if start == end {
        print(length)
        return
    }
	visited[start] = true

    if graphs[start]!.isEmpty {
        return
    } else {
        for i in graphs[start]! {
            if !visited[i] {
                dfs(i, end, length + lengths[start][i])
            }
        }
    }
}

for _ in 0..<m {
    let nodes = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let x = nodes[0], y = nodes[1]
    visited = [Bool](repeating: false, count: n + 1)
    dfs(x, y, 0)
}