import Foundation

struct Edge: Hashable {
    let a: Int
    let b: Int
    let x: Int
    let y: Int
}

func solution(_ dirs: String) -> Int {
    var cur = (0, 0)
    var visited = Set<Edge>()

    for ch in dirs {
        let next: (Int, Int)
        switch ch {
        case "L": next = (cur.0, cur.1 - 1)
        case "R": next = (cur.0, cur.1 + 1)
        case "U": next = (cur.0 + 1, cur.1)
        case "D": next = (cur.0 - 1, cur.1)
        default: continue
        }

        guard abs(next.0) <= 5, abs(next.1) <= 5 else { continue }

        let temp = [cur, next].sorted { a, b in
            if a.0 < b.0 { return true }
            else if a.1 < b.1 { return true }
            else { return false }
        }
        
        let a = temp[0]
        let x = temp[1]
        
        let edge = Edge(a: a.0, b: a.1, x: x.0, y: x.1)
        visited.insert(edge)
        cur = next
    }

    return visited.count
}