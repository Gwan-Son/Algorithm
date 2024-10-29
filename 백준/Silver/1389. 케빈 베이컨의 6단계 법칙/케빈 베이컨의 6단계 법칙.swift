import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var graph: [[Int]] = Array(repeating: Array(repeating: 10000, count: n), count: n)

for _ in 0..<m {
    let node = readLine()!.split(separator: " ").map{ Int($0)! }
    graph[node[0] - 1][node[1] - 1] = 1
    graph[node[1] - 1][node[0] - 1] = 1
}

for i in 0..<n {
    for j in 0..<n {
        for k in 0..<n {
            graph[j][k] = min(graph[j][k], graph[j][i] + graph[i][k])
        }
    }
}

var answer = 0
var keepSum = Int.max
for i in 0..<graph.count {
    let tempSum = graph[i].reduce(0, +)
    if keepSum > tempSum {
        keepSum = tempSum
        answer = i + 1
    }
}

print(answer)
