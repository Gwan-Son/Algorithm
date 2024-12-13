import Foundation

var arr = [[Int]](repeating: [Int](repeating: 0, count: 51), count: 51)
var tempArr = [[Int]](repeating: [Int](repeating: 0, count: 51), count: 51)

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
let M = input[1]
var answer = 0

for i in 0..<N {
    let input = readLine()!.map{ Int(String($0))! }
    for j in 0..<input.count {
        arr[i][j] = input[j]
    }
}

for i in 0..<N {
    let input = readLine()!.map{ Int(String($0))! }
    for j in 0..<input.count {
        tempArr[i][j] = input[j]
    }
}


for i in stride(from: 0, to: N - 2, by: 1) {
    for j in stride(from: 0, to: M - 2, by: 1) {
        if arr[i][j] != tempArr[i][j] {
            for x in i..<i+3 {
                for y in j..<j+3 {
                    arr[x][y] = 1 - arr[x][y]
                }
            }
            answer += 1
        }
        else { continue }
    }
}

for i in 0..<N {
    for j in 0..<M {
        if arr[i][j] != tempArr[i][j] {
            print(-1)
            exit(0)
        }
    }
}

print(answer)
