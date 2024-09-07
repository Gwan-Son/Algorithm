import Foundation

let Computers = Int(readLine()!)!
let Network = Int(readLine()!)!

var graph = [[Int]](repeating: [Int](), count: Computers + 1)
var visited = [Bool](repeating: false, count: Computers + 1)

for _ in 0..<Network {
    let network = readLine()!.split(separator: " ").map { Int($0)! }
    graph[network[0]].append(network[1])
    graph[network[1]].append(network[0])
}

func dfs(_ start: Int) {
    visited[start] = true
    for i in graph[start] {
        if !visited[i] {
            dfs(i)
        }
    }
}

dfs(1)
var answer = 0
for i in visited {
    if i {
        answer += 1
    }
}
print(answer - 1)
