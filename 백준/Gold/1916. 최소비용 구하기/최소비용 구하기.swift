import Foundation

let INF = 1_234_567_89

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var graphs = [[(end: Int, value: Int)]](repeating: [], count: n + 1)
var distance = [Int](repeating: INF, count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)
visited[0] = true

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    graphs[input[0]].append((input[1], input[2]))
}

let dest = readLine()!.split(separator: " ").map{ Int($0)! }
let start = dest[0]
let end = dest[1]
distance[start] = 0

func dijkstra(_ now: Int) {
    guard now != end else { return }
    
    visited[now] = true
    
    for (end, value) in graphs[now] {
        distance[end] = min(distance[end], distance[now] + value)
    }
    
    let next = distance.enumerated().filter{ !visited[$0.offset] }.min(by: { $0.element < $1.element })!.offset
    dijkstra(next)
}

dijkstra(start)

print(distance[end])
