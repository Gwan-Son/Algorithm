import Foundation

let T = Int(readLine()!)! // T

var arr: [[CLongLong]] = Array(repeating: Array(repeating: 0, count: 30), count: 30)

arr[1][0] = 1
arr[1][1] = 1

for i in 2...29 {
    arr[i][0] = 1
    for j in 1...29 {
        arr[i][j] = arr[i - 1][j - 1] + arr[i - 1][j]
    }
}

for _ in 0..<T {
    var input = readLine()?.split(separator: " ").map{ Int($0)! }
    var N = input?.first
    var M = input?.last
    print(arr[M ?? 0][N ?? 0])
}
