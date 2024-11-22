import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]
var queue = [(Int, Int)]()
var visited = [Bool](repeating: false, count: 100001)

func bfs() {
    queue.append((N,0))
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        if current.0 == K {
            print(current.1)
            break
        }
        if current.0 * 2 < 100001 && !visited[current.0 * 2] {
            visited[current.0 * 2] = true
            queue.append((current.0 * 2, current.1))
        }
        
        if current.0 - 1 >= 0 && !visited[current.0 - 1] {
            visited[current.0 - 1] = true
            queue.append((current.0 - 1, current.1 + 1))
        }
        
        if current.0 + 1 < 100001 && !visited[current.0 + 1] {
            visited[current.0 + 1] = true
            queue.append((current.0 + 1, current.1 + 1))
        }
    }
}

bfs()
