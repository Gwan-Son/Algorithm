import Foundation

let INF = 1234567890
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]

var arr: [[Int]] = Array(repeating: Array(repeating: INF, count: n), count: n)

for i in 0..<n {
    arr[i][i] = 0
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr[input[0] - 1][input[1] - 1] = input[2]
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            arr[i][j] = min(arr[i][j], arr[i][k] + arr[k][j])
        }
    }
}

var result = INF

for i in 0..<n {
    for j in 0..<n {
        if i == j { continue }
        result = min(result, arr[i][j] + arr[j][i])
    }
}


print(result == INF ? -1 : result)
