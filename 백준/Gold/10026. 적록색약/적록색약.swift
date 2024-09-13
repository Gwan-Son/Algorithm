import Foundation

let N = Int(readLine()!)!
var arr = [[Character]]()
let colors: [Character] = ["R", "G", "B"]

for _ in 0 ..< N {
    arr.append(Array(readLine()!))
}

func dfs(arr: inout [[Character]],x: Int, y: Int, color: Character) {
    if x < 0 || x >= N || y < 0 || y >= N {
        return
    }
    
    if arr[x][y] != color {
        return
    }
    
    arr[x][y] = "X"
    
    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    for direction in directions {
        dfs(arr: &arr, x: x + direction.0, y: y + direction.1, color: color)
    }
}

func countColor(arr: [[Character]], x: Int, y: Int) -> Int {
    var arr = arr
    var count = 0
    for i in 0 ..< N {
        for j in 0 ..< N {
            if arr[i][j] != "X" {
                dfs(arr: &arr, x: i, y: j, color: arr[i][j])
                count += 1
            }
        }
    }
    return count
}

print(countColor(arr: arr, x: 0, y: 0))


// 적록색약일 때
for i in 0 ..< N {
    for j in 0 ..< N {
        if arr[i][j] == "R" {
            arr[i][j] = "G"
        }
    }
}

print(countColor(arr: arr, x: 0, y: 0))