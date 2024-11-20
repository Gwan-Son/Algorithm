import Foundation

func checkWords(_ begin: String, _ target: String) -> Bool {
    var count = 0
    var beginArr = Array(begin)
    var targetArr = Array(target)
    
    for i in 0..<beginArr.count {
        if beginArr[i] != targetArr[i] {
            count += 1
        }
    }
    
    if count == 1 {
        return true
    }
    
    return false
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var result = 5000
    var visited = [Bool](repeating: false, count: words.count)
    let beginArr = Array(begin)
    var tempCount = 0
    
    func dfs(_ index: Int, _ word: String) {
        visited[index] = true
        tempCount += 1
        if target == word {
            result = min(result, tempCount)
        }
        
        for i in 0..<words.count {
            if !visited[i] && checkWords(word, words[i]) {
                dfs(i, words[i])
                tempCount -= 1
                visited[i] = false
            }
        }
    }
    
    for i in 0..<words.count {
        if checkWords(begin, words[i]) {
            dfs(i, words[i])
            visited = [Bool](repeating: false, count: words.count)
            tempCount = 0
        }
    }
    
    return result == 5000 ? 0 : result
}