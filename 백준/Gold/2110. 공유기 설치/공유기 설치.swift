import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], c = input[1]
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var left = 0
var right = arr.last!
var result = 0

while left <= right {
    let mid = (left + right) / 2
    var installCount = 1
    var lastInstalled = arr[0]
    for i in 1..<n {
        if arr[i] - lastInstalled >= mid {
            installCount += 1
            lastInstalled = arr[i]
        }
    }
    if installCount >= c {
        result = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(result)