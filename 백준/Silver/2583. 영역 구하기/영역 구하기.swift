import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = input[0]; let n = input[1]; let k = input[2]

var board = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var answers = [Int]()
var temp = 0

func fill(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) {
    for i in x1..<x2 {
        for j in y1..<y2 {
            board[i][j] = true
        }
    }
}

func dfs(_ x: Int, _ y: Int) {
    if (0..<n) ~= x && (0..<m) ~= y && !board[x][y] {
        temp += 1
        board[x][y] = true
        dfs(x - 1, y)
        dfs(x + 1, y)
        dfs(x, y - 1)
        dfs(x, y + 1)
    } else {
        return
    }
}

for _ in 0..<k {
    let pos = readLine()!.split(separator: " ").map{ Int(String($0))! }
    fill(pos[0], pos[1], pos[2], pos[3])
}

for i in 0..<n {
    for j in 0..<m {
        if !board[i][j] {
            temp = 0
            dfs(i, j)
            answers.append(temp)
        }
    }
}

answers.sort()
print(answers.count)
answers.forEach{ print($0, terminator: " ") }
