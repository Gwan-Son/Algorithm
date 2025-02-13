import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var input = readLine()!
    let N = Int(sqrt(Double(input.count)))
    var arr = [[String]](repeating: [String](repeating: "", count: N), count: N)
    for i in 0..<N {
        for j in 0..<N {
            arr[i][j] = String(input.removeFirst())
        }
    }
    var answer = ""
    for i in (0..<N).reversed() {
        for j in 0..<N {
            answer += arr[j][i]
        }
    }
    
    print(answer)
}