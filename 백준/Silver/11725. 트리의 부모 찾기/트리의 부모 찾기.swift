import Foundation

let n = Int(readLine()!)!

var nodes: [Int: [Int]] = [:]
var result: [Int] = Array(repeating: 0, count: n + 1)
for i in 1...n {
    nodes[i] = []
}

for _ in 1...n-1 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    nodes[input[0]]!.append(input[1])
    nodes[input[1]]!.append(input[0])
}

func bfs(_ start: Int) {
    var queue: [Int] = [start]
    var index = 0
    result[start] = -1
    while queue.count > index {
        let currentNode = queue[index]
        for i in nodes[currentNode]! {
            if result[i] == 0 {
                result[i] = currentNode
                queue.append(i)
            }
        }
        index += 1
    }
}

bfs(1)
for i in 2...n {
    print(result[i])
}
