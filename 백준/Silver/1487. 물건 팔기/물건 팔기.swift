import Foundation

let n = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append((input[0], input[1]))
}

arr.sort(by: { $0.0 < $1.0 })

var answer = 0
var maxSum = 0

for i in 0..<arr.count {
    var sum = 0
    for j in 0..<arr.count {
        if arr[i].0 <= arr[j].0 && (arr[i].0 - arr[j].1) > 0 {
            sum += arr[i].0 - arr[j].1
        }
    }
    if maxSum < sum && sum > 0 {
        maxSum = sum
        answer = arr[i].0
    }
}


print(answer)

