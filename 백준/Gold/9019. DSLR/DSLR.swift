import Foundation

let cmd = ["","D","S", "L", "R"]

extension Int {
    var d: Int {
        return self * 2 % 10000
    }
    var s: Int {
        return self - 1 < 0 ? 9999 : self - 1
    }
    var l: Int {
        return (self % 1000) * 10 + self / 1000
    }
    var r: Int {
        return (self % 10) * 1000 + self / 10
    }
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    var visited = [Bool](repeating: false, count: 10_001)
    visited[a] = true
    var queue = [(a, 0)]
    var index = 0
    
    while queue.count > index {
        let num = queue[index].0
        let command = queue[index].1
        visited[num] = true
        if num == b {
            var answer = ""
            for i in String(command) {
                answer += cmd[Int(String(i))!]
            }
            print(answer)
            break
        }
        
        for (index, n) in [num.d, num.s, num.l, num.r].enumerated() {
            if !visited[n] {
                visited[n] = true
                queue.append((n, command * 10 + index + 1))
            }
        }
        index += 1
    }
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }