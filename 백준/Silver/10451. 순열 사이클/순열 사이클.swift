import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.insert(0, at: 0)
    var visited = [Bool](repeating: false, count: n + 1)
    var answer = 0
    for i in 1...n {
        if !visited[i] {
            answer += 1
            var next = arr[i]
            while !visited[next] {
                visited[next] = true
                next = arr[next]
            }
        }
    }
    print(answer)
}