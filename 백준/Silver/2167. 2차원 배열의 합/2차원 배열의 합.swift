import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var arr = [[Int]]()

for _ in 0..<input[0] {
    arr.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

let k = Int(readLine()!)!

for _ in 0..<k {
    let pos = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let i = pos[0] - 1; let j = pos[1] - 1; let x = pos[2] - 1; let y = pos[3] - 1
    var answer = 0
    for a in i...x {
        for b in j...y {
            answer += arr[a][b]
        }
    }
    print(answer)
}
