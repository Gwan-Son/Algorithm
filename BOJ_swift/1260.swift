import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0] // 정점의 개수
let M = input[1] // 간선의 개수
let V = input[2] // 시작할 정점의 번호

var graph: [[Int]] = Array(repeating: [], count: N + 1)
for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

for i in 1...N {
    graph[i].sort()
}

var dfs_visited: [Bool] = Array(repeating: false, count: N + 1)
var bfs_visited: [Bool] = Array(repeating: false, count: N + 1)

func dfs(_ v: Int) {
    dfs_visited[v] = true
    print(v, terminator: " ")
    for i in graph[v] {
        if !dfs_visited[i] {
            dfs(i)
        }
    }
}

func bfs(_ v: Int) {
    var queue: [Int] = []
    queue.append(v)
    bfs_visited[v] = true
    while !queue.isEmpty {
        let now = queue.removeFirst()
        print(now, terminator: " ")
        for i in graph[now] {
            if !bfs_visited[i] {
                bfs_visited[i] = true
                queue.append(i)
            }
        }
    }
}

dfs(V)
print()
bfs(V)
