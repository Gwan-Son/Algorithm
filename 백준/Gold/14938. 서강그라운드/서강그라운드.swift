import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let m = input[1]
let r = input[2]

let INF = 100

var ground = [[Int]](repeating: [Int](repeating: INF, count: n), count: n)

for i in 0..<n {
    ground[i][i] = 0
}

let items = readLine()!.split(separator: " ").map{ Int($0)! }

for _ in 0..<r {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    ground[input[0] - 1][input[1] - 1] = input[2]
    ground[input[1] - 1][input[0] - 1] = input[2]
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            ground[i][j] = min(ground[i][j], ground[i][k] + ground[k][j])
        }
    }
}

var answer = 0
for i in 0..<n {
    var temp = 0
    for j in 0..<n {
        if ground[i][j] <= m {
            temp += items[j]
        }
    }
    answer = max(answer, temp)
}

print(answer)
