import Foundation

let n = Int(readLine()!)!
var dims = [Int]()
dims.reserveCapacity(n + 1)

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let r = input[0], c = input[1]
    if i == 0 {
        dims.append(r)
        dims.append(c)
    } else {
        dims.append(c)
    }
}

var dp = Array(repeating: Array(repeating: Int.max, count: n), count: n)
for i in 0..<n {
    dp[i][i] = 0
}

if n >= 2 {
    for len in 2...n {
        for i in 0...(n - len) {
            let j = i + len - 1
            var best = Int.max
            for k in i..<j {
                let left = dp[i][k]
                let right = dp[k + 1][j]
                let cost = dims[i] * dims[k + 1] * dims[j + 1]
                if left != Int.max && right != Int.max {
                    best = min(best, left + right + cost)
                }
            }
            dp[i][j] = best
        }
    }
}

print(dp[0][n - 1])

