import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let V = input[0], E = input[1]

var parents = [Int](0...V)
var answer = 0
var edges: [(Int, Int, Int)] = []

for _ in 0..<E {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = line[0], b = line[1], c = line[2]
    edges.append((a, b, c))
}

edges.sort(by: { $0.2 < $1.2 })

func getParent(_ a: Int) -> Int {
    if parents[a] == a { return a }
    parents[a] = getParent(parents[a])
    return parents[a]
}

func unionParent(_ x: Int, _ y: Int) {
    let parentX = getParent(x)
    let parentY = getParent(y)
    
    if parentX < parentY {
        parents[parentY] = parentX
    } else {
        parents[parentX] = parentY
    }
}

func findParent(_ x: Int, _ y: Int) -> Bool {
    return getParent(x) == getParent(y)
}

func kruskal() {
    for edge in edges {
        let a = edge.0, b = edge.1, c = edge.2
        if !findParent(a, b) {
            unionParent(a, b)
            answer += c
        }
    }
    print(answer)
}

kruskal()