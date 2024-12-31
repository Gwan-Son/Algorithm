import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var board = [[Int]](repeating: [], count: input[0])

for i in 0..<input[0] {
    board[i] = readLine()!.split(separator: " ").map{ Int(String($0))! }
}

var tempBoard = [[Int]](repeating: [Int](repeating: 0, count: input[1]), count: input[0])

var time = 0
var vaccumMachineHead: (x: Int, y: Int) = (0, 0)
var vaccumMachineBottom: (x: Int, y: Int) = (0, 0)

for i in 0..<board.count {
    if board[i][0] == -1 {
        vaccumMachineHead = (i, 0)
        vaccumMachineBottom = (i + 1, 0)
        break
    }
}

func diffusion(x: Int, y: Int, field: inout [[Int]]) {
    let (x, y) = (x, y)
    let diffusionValue = board[x][y] / 5
    let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
    
    for direction in directions {
        let nextX = x + direction.0
        let nextY = y + direction.1
        
        if nextX >= 0 && nextX < field.count && nextY >= 0 && nextY < field[nextX].count && (nextX != vaccumMachineHead.x || nextY != vaccumMachineHead.y) && (nextX != vaccumMachineBottom.x || nextY != vaccumMachineBottom.y) {
            field[nextX][nextY] += diffusionValue
            field[x][y] -= diffusionValue
        }
    }
    
}

func blowWind(field: inout [[Int]]) {
    // vaccumMachineHead
    // vaccumMachineBottom
    var temp = 0
    var prev = 0
    // 0row
    for i in 0..<vaccumMachineHead.x {
        prev = field[i][0]
        field[i][0] = temp
        temp = prev
    }
    temp = 0
    prev = 0
    for i in (vaccumMachineBottom.x + 1..<field.count).reversed() {
        prev = field[i][0]
        field[i][0] = temp
        temp = prev
    }
    temp = 0
    prev = 0
    // <-
    var temp2 = 0
    var prev2 = 0
    for i in (0..<field[0].count).reversed() {
        prev = field[0][i]
        field[0][i] = temp
        temp = prev
        prev2 = field[field.count - 1][i]
        field[field.count - 1][i] = temp2
        temp2 = prev2
    }
    temp = 0
    prev = 0
    temp2 = 0
    prev2 = 0
    for i in (0...vaccumMachineHead.x).reversed() {
        prev = field[i][field[i].count - 1]
        field[i][field[i].count - 1] = temp
        temp = prev
    }
    temp = 0
    prev = 0
    for i in vaccumMachineBottom.x..<field.count {
        prev = field[i][field[i].count - 1]
        field[i][field[i].count - 1] = temp
        temp = prev
    }
    temp = 0
    prev = 0
    
    // ->
    for i in 1..<field[0].count {
        prev = field[vaccumMachineHead.x][i]
        field[vaccumMachineHead.x][i] = temp
        temp = prev
        prev2 = field[vaccumMachineBottom.x][i]
        field[vaccumMachineBottom.x][i] = temp2
        temp2 = prev2
    }
}

while time < input[2] {
    tempBoard = board
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] > 0 {
                diffusion(x: i, y: j, field: &tempBoard)
            }
        }
    }
    blowWind(field: &tempBoard)
    board = tempBoard
    tempBoard = [[Int]](repeating: [Int](repeating: 0, count: input[1]), count: input[0])
    time += 1
}

func calcSumBoard(board: [[Int]]) -> Int {
    var sum = 0
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] > 0 {
                sum += board[i][j]
            }
        }
    }
    return sum
}

print(calcSumBoard(board: board))
