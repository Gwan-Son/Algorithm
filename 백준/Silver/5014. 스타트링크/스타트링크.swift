import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let F = input[0], S = input[1], G = input[2], U = input[3], D = input[4]

var answer = Int.max
var visited = [Bool](repeating: false, count: F + 1)
func bfs(_ start: Int) {
    var queue: [(Int, Int)] = [(start, 0)]
    
    while !queue.isEmpty {
        let (cur, curCount) = queue.removeFirst()
        
        if cur == G {
            answer = min(answer, curCount)
            return
        }
        
        if cur + U <= F {
            if !visited[cur + U] {
                visited[cur + U] = true
                queue.append((cur + U, curCount + 1))
            }
        }
        
        if cur - D >= 1 {
            if !visited[cur - D] {
                visited[cur - D] = true
                queue.append((cur - D, curCount + 1))
            }
        }
    }
}

visited[S] = true
bfs(S)

print(answer == Int.max ? "use the stairs" : answer)
