import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    
    var answer: Int = 0
    var visited = [Bool](repeating: false, count: n)
    
    for i in 0..<computers.count {
        if visited[i] == false {
            dfs(computers, &visited, i)
            answer += 1
        }
    }
    
    return answer
}

func dfs(_ graph: [[Int]], _ visited: inout [Bool], _ index: Int) {
    visited[index] = true
    for i in 0..<graph[index].count {
        if graph[index][i] == 1 && !visited[i] {
            dfs(graph, &visited, i)
        }
    }
}
