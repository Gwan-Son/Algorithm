import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = input[0]; let m = input[1]
    let xInput = readLine()!.split(separator: " ").map{ String($0) }.joined()
    let yInput = readLine()!.split(separator: " ").map{ String($0) }.joined()
    let x = Int(xInput)!; let y = Int(yInput)!
    var board = readLine()!.split(separator: " ").map{ String($0) }
    var arr = [Int]()
    
    if m == 1 {
        arr = board.map{ Int($0)! }
    } else {
        for i in 0..<m - 1 {
            board.append(board[i])
        }
        
        for i in 0..<n {
            arr.append(Int(board[i...i + m - 1].joined())!)
        }
    }
    
    print(arr.filter{ (x...y) ~= $0 }.count)
}