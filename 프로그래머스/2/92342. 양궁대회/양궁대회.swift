func solution(_ n: Int, _ info: [Int]) -> [Int] {
    var maxDiff = 0
    var answer = [-1]
    var ryan = [Int](repeating: 0, count: 11)
    
    func isShotLower(_ ryan: [Int], _ answer: [Int]) -> Bool {
        if answer[0] == -1 {
            return true
        }
        for i in (0...10).reversed() {
            if ryan[i] > answer[i] {
                return true
            } else if ryan[i] == answer[i] {
                continue
            } else {
                return false
            }
        }
        return false
    }
    
    func dfs(_ index: Int, _ arrows: Int) {
        if index == 11 || arrows == 0 {
            if arrows > 0 { ryan[10] += arrows }
            
            let ryanScore = (0...10).reduce(0) { $0 + (ryan[$1] > info[$1] ? 10 - $1 : 0) }
            let apeachScore = (0...10).reduce(0) { $0 + (ryan[$1] <= info[$1] && info[$1] > 0 ? 10 - $1 : 0) }
            let diff = ryanScore - apeachScore
            
            if diff > 0 && diff >= maxDiff {
                if diff > maxDiff || isShotLower(ryan, answer) {
                    maxDiff = diff
                    answer = ryan
                }
            }
            
            if arrows > 0 { ryan[10] -= arrows }
            return
        }
        
        // 현재 과녁을 이기는 경우
        if arrows > info[index] {
            ryan[index] = info[index] + 1
            dfs(index + 1, arrows - ryan[index])
            ryan[index] = 0
        }
        
        // 현재 과녁을 포기하는 경우
        dfs(index + 1, arrows)
    }
    
    dfs(0, n)
    return maxDiff > 0 ? answer : [-1]
}