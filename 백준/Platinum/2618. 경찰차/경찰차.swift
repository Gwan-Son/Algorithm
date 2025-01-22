import Foundation

let n = Int(readLine()!)!
let incident = Int(readLine()!)!

var board = [[1, 1], [n, n]]
var dp = [[Int]](repeating: [Int](repeating: -1, count: 1002), count: 1002)
var dp_trace = [[Int]](repeating: [Int](repeating: -1, count: 1002), count: 1002)

for _ in 0..<incident {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    board.append(input)
}

func calc(x: Int, y: Int) -> Int {
    var distance = 0
    
    let nextIncident = max(x, y) + 1
    
    if nextIncident == incident + 2 { return 0 }
    
    if dp[x][y] != -1 { return dp[x][y] }
    
    let calc1 = calc(x: nextIncident, y: y) + (abs(board[x][0] - board[nextIncident][0]) + abs(board[x][1] - board[nextIncident][1]))
    let calc2 = calc(x: x, y: nextIncident) + (abs(board[y][0] - board[nextIncident][0]) + abs(board[y][1] - board[nextIncident][1]))
    
    if calc1 < calc2 {
        dp_trace[x][y] = 1
        dp[x][y] = calc1
    } else {
        dp_trace[x][y] = 2
        dp[x][y] = calc2
    }
    
    distance = dp[x][y]
    
    return distance
}

print(calc(x: 0, y: 1))

var x = 0
var y = 1

for i in 2..<incident + 2 {
    print(dp_trace[x][y])
    if dp_trace[x][y] == 1 {
        x = i
    } else {
        y = i
    }
}
