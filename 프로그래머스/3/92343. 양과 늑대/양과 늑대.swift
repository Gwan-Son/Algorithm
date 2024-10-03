import Foundation

func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
    var visited: [Bool] = Array(repeating: false, count: info.count)
    var answer: [Int] = []
    
    func dfs(_ sheeps: Int, _ wolves: Int) {
        if sheeps > wolves {
            answer.append(sheeps)
        } else { return }
        
        for e in edges {
            if visited[e[0]] && !visited[e[1]] {
                visited[e[1]] = true
                if info[e[1]] == 0 {
                    dfs(sheeps + 1, wolves)
                } else {
                    dfs(sheeps, wolves + 1)
                }
                visited[e[1]] = false
            }
        }
    }
    
    visited[0] = true
    dfs(1, 0)
    
    return answer.max()!
}