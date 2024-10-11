import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

func dfs(_ arr: [Int], _ count: Int, _ m: Int) {
    if arr.count == m {
        print(arr.map{ String($0) }.joined(separator: " "))
    } else {
        var prevNum = 1
        if arr.count > 0 {
            prevNum = arr.last!
        }
        
        for i in prevNum...input[0] {
            dfs(arr + [i], count + 1, m)
        }
    }
}

dfs([], 0, input[1])