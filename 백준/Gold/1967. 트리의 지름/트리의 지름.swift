import Foundation

let v = Int(readLine()!)!

if v == 1 {
    print(0)
    exit(0)
}

var visited = [Bool](repeating: false, count: v + 1)
var distance = [Int](repeating: 0, count: v + 1)
var nodes = [Int: [(Int, Int)]]()

for _ in 1...v - 1 {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    let parent = input.removeFirst()
    let child = input.removeFirst()
    let weight = input.removeFirst()
    
    nodes[parent,default: []].append((child, weight))
    nodes[child,default: []].append((parent, weight))
}

func bfs(_ start: Int) {
    var queue: [Int] = [start]
    visited[start] = true
    
    while !queue.isEmpty {
        let currentNode = queue.removeFirst()
        
        for i in nodes[currentNode,default: []] {
            if !visited[i.0] {
                visited[i.0] = true
                queue.append(i.0)
                distance[i.0] = distance[currentNode] + i.1
            }
        }
    }
}

var startNode = 1
bfs(startNode)

for i in 2...v {
    if distance[startNode] < distance[i] {
        startNode = i
    }
}

visited = [Bool](repeating: false, count: v + 1)
distance = [Int](repeating: 0, count: v + 1)
bfs(startNode)
print(distance.max()!)
