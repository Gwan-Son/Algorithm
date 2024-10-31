import Foundation

let N = Int(readLine()!)!

// 각 퀸들의 위치
var qPos: [Int] = Array(repeating: -1, count: 16)
var visited: [Bool] = Array(repeating: false, count: 16)
var count = 0

func checkPos(col: Int) -> Bool {
    for i in 0..<col {
        if qPos[i] == qPos[col] || abs(qPos[col] - qPos[i]) == abs(col - i) {
            return false
        }
    }
    return true
}

func nqueen(col: Int) {
    if col == N {
        count += 1
        return
    }
    
    for i in 0..<N {
        if visited[i] { continue }
        qPos[col] = i
        if checkPos(col: col) {
            visited[i] = true
            nqueen(col: col + 1)
            visited[i] = false
        }
    }
}

nqueen(col: 0)
print(count)

