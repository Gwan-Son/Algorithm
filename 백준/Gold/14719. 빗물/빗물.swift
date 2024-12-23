import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let h = input[0]
let w = input[1]

var board = [[Int]](repeating: [Int](repeating: 0, count: w), count: h)

var block = readLine()!.split(separator: " ").map{ Int(String($0))! }

for i in 0..<block.count {
    for j in 0..<block[i] {
        board[j][i] = 1
    }
}

var answer = 0
for i in 0..<board.count {
    var firstIdx = board[i].firstIndex(of: 1) ?? -1
    for j in 0..<board[i].count {
        if firstIdx == -1 {
            continue
        }
        
        if board[i][j] == 1 && firstIdx != j {
            answer += board[i][firstIdx...j].filter{ $0 == 0 }.count
            firstIdx = j
        }
    }
}

print(answer)
