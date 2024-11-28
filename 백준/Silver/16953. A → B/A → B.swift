import Foundation

let input = readLine()!.split(separator: " ").map { Int64(String($0))! }
let A = input[0]
let B = input[1]

func bfs(_ a: Int64) {
    var queue = [(Int64, Int)]()
    queue.append((a, 0))
    
    while !queue.isEmpty {
        let cur = queue.removeFirst()
        if cur.0 == B {
            print(cur.1 + 1)
            return
        }
        
        if cur.0 * 2 <= B {
            queue.append((cur.0 * 2, cur.1 + 1))
        }
        
        if cur.0 * 10 + 1 <= B {
            queue.append((cur.0 * 10 + 1, cur.1 + 1))
        }
    }
    print(-1)
}

bfs(A)
