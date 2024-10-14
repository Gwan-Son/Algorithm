import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]
var nums: [Int] = []

nums = readLine()!.split(separator: " ").map{ Int($0)! }
nums.sort()

func dfs(_ arr:[Int], _ m: Int) {
    if arr.count == m {
        print(arr.map{ String($0) }.joined(separator: " "))
    } else {
        for i in nums {
            if arr.contains(i) {
                continue
            } else {
                dfs(arr + [i], m)
            }
        }
    }
}

dfs([], M)