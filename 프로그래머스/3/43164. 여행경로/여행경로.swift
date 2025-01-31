import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var visited = [Bool](repeating: false, count: tickets.count)
    var result: [String] = []
    func dfs(_ start: String) {
        if result.count == tickets.count {
            result.append(start)
            return
        }
        
        for i in 0..<tickets.count {
            if tickets[i][0] == start && !visited[i] {
                visited[i] = true
                result.append(start)
                dfs(tickets[i][1])
                if result.count == tickets.count + 1 {
                    return
                }
                result.removeLast()
                visited[i] = false
            }
        }
    }
    dfs("ICN")
    return result
}