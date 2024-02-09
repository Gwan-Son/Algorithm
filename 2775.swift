import Foundation

let T = Int(readLine()!)! // T

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)

for i in 0..<arr.count {
    arr[0][i] = i
}

for i in 1...14 {
    for j in 1...14 {
        arr[i][j] = arr[i-1][j] + arr[i][j-1]
    }
}

for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(arr[k][n])
}
