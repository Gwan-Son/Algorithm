import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0]
let n = input[1]

var maps = [[Int]](repeating: [], count: m)
let directions = [(1,0), (-1,0), (0,1), (0,-1)]
var dp = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)
dp[m - 1][n - 1] = 1
for i in 0..<m {
    maps[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

func dfs(_ x: Int, _ y: Int) -> Int {
    if dp[x][y] != -1 {
        return dp[x][y]
    }
    var count = 0
    for i in directions {
        let nextX = x + i.0
        let nextY = y + i.1
        if nextX >= 0 && nextX < m && nextY >= 0 && nextY < n {
            if maps[nextX][nextY] < maps[x][y] {
                count += dfs(nextX, nextY)
            }
        }
    }
    dp[x][y] = count
    return dp[x][y]
}

print(dfs(0, 0))
