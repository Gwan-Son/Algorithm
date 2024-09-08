import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var graph = [[Int]](repeating: [Int](), count: N + 1)
var visited = [Bool](repeating: false, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

var result = 0

func dfs(_ start: Int, _ visited: inout [Bool]) {
    visited[start] = true
    for i in graph[start] {
        if !visited[i] {
            dfs(i, &visited)
        }
    }
}

for i in 1...N {
    if !visited[i] {
        result += 1
        dfs(i, &visited)
    }
}

print(result)
