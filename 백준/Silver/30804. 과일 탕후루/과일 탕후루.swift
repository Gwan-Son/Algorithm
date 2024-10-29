import Foundation

let n = Int(readLine()!)!

var arr = [Int]()

arr = readLine()!.split(separator: " ").map{ Int($0)! }

var nums: [Int] = Array(repeating: 0, count: 10)

var low = 0
var answer = 0
var duplicatedNum = 0

for high in 0..<n {
    nums[arr[high]] += 1
    
    if nums[arr[high]] == 1 {
        duplicatedNum += 1
    }
    
    while duplicatedNum > 2 {
        nums[arr[low]] -= 1
        
        if nums[arr[low]] == 0 {
            duplicatedNum -= 1
        }
        
        low += 1
    }
    
    answer = max(answer, high - low + 1)
}

print(answer)
