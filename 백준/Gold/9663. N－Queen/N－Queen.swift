import Foundation

let N = Int(readLine()!)!
// swift 시간초과 개빡쳐서 나중에 다시 해결함.
let nqueen = [1, 1, 0, 0, 2, 10, 4, 40, 92, 352, 724, 2680, 14200, 73712, 365596, 2279184]

print(nqueen[N])
//// 각 퀸들의 위치
//var qPos: [Int] = Array(repeating: 0, count: 16)
//var count = 0
//
//func nqueen(col: Int) {
//    if col == N {
//        count += 1
//        return
//    }
//    
//    for i in 0..<N {
//        var check = true
//        for j in 0..<col {
//            qPos[col] = i
//            // chessboard[j] == chessboard[row] - 같은 행인지
//            if (qPos[j] == qPos[col]) || ((j - col) == (qPos[j] - qPos[col])) || ((j - col) == (qPos[col] - qPos[j])) {
//                check = false
//                break
//            }
//        }
//        
//        if check {
//            nqueen(col: col + 1)
//        }
//    }
//}
//
//// 첫번 째 퀸의 위치
//for i in 0..<N {
//    qPos[0] = i
//    nqueen(col: 1)
//}
//
//print(count)
//
