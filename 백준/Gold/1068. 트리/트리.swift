import Foundation

let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let removeNode = Int(readLine()!)!

var nodes: [Int: [Int]] = [:]
for i in 0..<N {
    nodes[i] = []
}

for i in 0..<input.count {
    if i == removeNode || input[i] == -1 || input[i] == removeNode {
        continue
    }
    nodes[input[i], default: []].append(i)
}

var answer = 0

func dfs(_ node: Int) {
    if nodes[node]!.isEmpty {
        answer += 1
        return
    }
    for next in nodes[node]! {
        dfs(next)
    }
}

for i in 0..<N {
    if input[i] == -1 && i != removeNode {
        dfs(i)
    }
}

print(answer)

