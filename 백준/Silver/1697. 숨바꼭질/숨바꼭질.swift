import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

func findHim(N: Int, K: Int) -> Int {
    if N >= K {
        return N - K
    }
    
    let max = 1000000
    var visited = [Int](repeating: -1, count: max + 1)
    var queue = [(Int, Int)]()
    
    queue.append((N, 0))
    visited[N] = 0
    
    while !queue.isEmpty {
        let (cur, cnt) = queue.removeFirst()
        
        if cur == K {
            return cnt
        }
        
        for next in [cur - 1, cur + 1, cur * 2] {
            if next < 0 || next > max || visited[next] != -1 {
                continue
            }
            
            visited[next] = cnt + 1
            queue.append((next, cnt + 1))
        }
    }
    
    return -1
}

print(findHim(N: N, K: K))