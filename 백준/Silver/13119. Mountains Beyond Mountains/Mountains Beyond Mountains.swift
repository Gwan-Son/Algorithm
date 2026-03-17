import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1], x = input[2]

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var board = [[String]](repeating: [String](repeating: ".", count: m), count: n)

board[n - x] = [String](repeating: "-", count: m)

for i in 0..<arr.count {
    var temp = arr[i]
    for j in (0..<n).reversed() {
        if temp > 0 {
            if board[j][i] == "." {
                board[j][i] = "#"
            } else if board[j][i] == "-" {
                board[j][i] = "*"
            }
            temp -= 1
        } else {
            if (n - x) < j && (i + 1) % 3 == 0 {
                board[j][i] = "|"
            }
        }
    }
}

board.forEach{
    print($0.joined())
}
