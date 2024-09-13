import Foundation

let N = Int(readLine()!)! // N

var arr = [[Int]](repeating: [Int](repeating: 0, count: 2), count: N)

for i in 0..<N {
    arr[i] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
}

arr.sort{($0[1], $0[0]) < ($1[1], $1[0])}

for i in arr {
    print("\(i[0]) \(i[1])")
}
