import Foundation

let n = Int(readLine()!)!

var arr: [[Int]] = Array(repeating: [], count: n)

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr[i] = input
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if (arr[i][k] != 0) && (arr[k][j] != 0) {
                arr[i][j] = 1
            }
        }
    }
}

arr.forEach {
    $0.forEach {
        print($0, terminator: " ")
    }
    print()
}
