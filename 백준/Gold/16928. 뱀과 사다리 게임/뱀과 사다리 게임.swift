import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let m = input[0]
let n = input[1]

var board: [Int: [Int]] = [:]
var result: [Int] = Array(repeating: 0, count: 101)
var ladder: [Int] = []
var snake: [Int] = []

for i in 1..<101 {
    var temp = [Int]()
    for j in 1...6 {
        if i + j > 100 { break }
        temp.append(i + j)
    }
    board[i] = temp
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board[input[0]]!.append(input[1])
    ladder.append(input[0])
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board[input[0]]!.append(input[1])
    snake.append(input[0])
}

func bfs(_ start: Int) {
    var visited: [Int] = []
    var queue: [Int] = [start]
    while !queue.isEmpty {
        let node = queue.removeFirst()
        if visited.contains(node) { continue }
        
        visited.append(node)
        for i in 0..<board[node]!.count {
            if i > 5 {
                result[board[node]![i]] = result[node]
            } else if !snake.contains(node) && !ladder.contains(node) {
                if result[board[node]![i]] == 0 {
                    result[board[node]![i]] = result[node] + 1
                } else {
                    result[board[node]![i]] = min(result[board[node]![i]], result[node] + 1)
                }
            }
            queue.append(board[node]![i])
        }
    }
    
    print(result[100])
}

bfs(1)
