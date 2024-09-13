import Foundation

let N = Int(readLine()!)!
var result = 0
var arr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var tempArr = arr.sorted()

for i in 0..<tempArr.count {
    if i != 0 {
        arr[i] = arr[i - 1] + tempArr[i]
    } else {
        arr[i] = tempArr[i]
    }
    result += arr[i]
}

print(result)
