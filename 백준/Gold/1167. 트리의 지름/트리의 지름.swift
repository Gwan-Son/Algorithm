import Foundation

let v = Int(readLine()!)!

var visited = [Bool](repeating: false, count: v + 1)
var distance = [Int](repeating: 0, count: v + 1)
var nodes = [Int: [(Int, Int)]]()

for _ in 1...v {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input.removeFirst()
    
    for i in stride(from: 0, to: input.count - 1, by: 2) {
        nodes[u,default: []].append((input[i], input[i+1]))
    }
}

func bfs(_ start: Int) {
    var queue: [Int] = [start]
    visited[start] = true
    
    while !queue.isEmpty {
        let currentNode = queue.removeFirst()
        
        for i in nodes[currentNode]! {
            if !visited[i.0] {
                visited[i.0] = true
                queue.append(i.0)
                distance[i.0] = distance[currentNode] + i.1
            }
        }
    }
}


bfs(1)

var startNode = 1
for i in 2...v {
    if distance[startNode] < distance[i] {
        startNode = i
    }
}

visited = [Bool](repeating: false, count: v + 1)
distance = [Int](repeating: 0, count: v + 1)
bfs(startNode)
print(distance.max()!)
