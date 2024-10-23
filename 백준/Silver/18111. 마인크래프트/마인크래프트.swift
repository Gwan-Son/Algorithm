import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]
let b = input[2]
var area = 0

var arr = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
    let line = readLine()!.split(separator: " ").map{ Int($0)! }
    area += line.reduce(0, +)
    arr[i] = line
}

var maxHeight = 0
var minTime = 1000000000
for i in 0...256 {
    var tempTime = 0
    if b + area >= n*m*i {
        for j in 0..<n {
            for k in 0..<m {
                if arr[j][k] > i {
                    tempTime += (arr[j][k] - i) * 2
                } else if arr[j][k] < i {
                    tempTime += (i - arr[j][k])
                }
            }
        }
        if tempTime <= minTime {
            minTime = tempTime
            maxHeight = i
        }
    }
    
}

print(minTime, maxHeight)

