import Foundation

let n = Int(readLine()!)!

var arr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }

var left = [Int](repeating: 1, count: n)
var right = [Int](repeating: 1, count: n)

for i in 0..<n {
    for j in 0..<i {
        if arr[i] > arr[j] {
            left[i] = max(left[i], left[j] + 1)
        }
    }
}

arr.reverse()

for i in 0..<n {
    for j in 0..<i {
        if arr[i] > arr[j] {
            right[i] = max(right[i], right[j] + 1)
        }
    }
}

var result = 0

right.reverse()
for i in 0..<n {
    result = max(result, left[i] + right[i] - 1)
}

print(result)
