import Foundation

let n = Int(readLine()!)!
let findRelate = readLine()!.split(separator: " ").map{ Int(String($0))! }

var nodes: [Int: [Int]] = [:]
for i in 1...n {
    nodes[i] = []
}

let m = Int(readLine()!)!
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    nodes[input[0], default: []].append(input[1])
    nodes[input[1], default: []].append(input[0])
}

var visited = [Bool](repeating: false, count: n + 1)

func dfs(_ node: Int,_ depth: Int) {
    if node == findRelate[1] {
        print(depth)
        exit(0)
    }
    for next in nodes[node]! {
        if !visited[next]{
            visited[next] = true
            dfs(next, depth + 1)
            visited[next] = false
        }
    }
}

visited[findRelate[0]] = true
dfs(findRelate[0], 0)
print(-1)
