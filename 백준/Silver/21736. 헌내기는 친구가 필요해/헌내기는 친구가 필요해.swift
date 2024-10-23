import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var arr = [[Character]]()

for _ in 0 ..< N {
    arr.append(Array(readLine()!))
}

var person = 0

func dfs(x: Int, y: Int) {
    if x < 0 || x >= N || y < 0 || y >= M {
        return
    }
    
    if arr[x][y] == "X" || arr[x][y] == "D" {
        return
    }
    
    if arr[x][y] == "P" {
        person += 1
    }
    
    arr[x][y] = "D"
    
    dfs(x: x - 1, y: y)
    dfs(x: x + 1, y: y)
    dfs(x: x, y: y - 1)
    dfs(x: x, y: y + 1)
}

for i in 0..<N {
    for j in 0..<M {
        if arr[i][j] == "I" {
            dfs(x: i, y: j)
            break
        }
    }
}

print(person == 0 ? "TT" : "\(person)")
