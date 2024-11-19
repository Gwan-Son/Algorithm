import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    var visited = [Bool](repeating: false, count: dungeons.count)
    
    var temp = 0
    
    func dfs(_ index: Int, _ heart: Int) {
        visited[index] = true
        temp += 1
        
        result = max(result, temp)
        let currentHeart = heart - dungeons[index][1]
        
        for i in visited.indices {
            if !visited[i] && currentHeart >= dungeons[i][0] {
                dfs(i, currentHeart)
                visited[i] = false
                temp -= 1
            }
        }
    }
    
    for i in dungeons.indices {
        if dungeons[i][0] <= k {
            dfs(i, k)
        }
        visited = [Bool](repeating: false, count: dungeons.count)
        temp = 0
    }
    
    return result
}