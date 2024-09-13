import Foundation

let T = Int(readLine()!)!


for _ in 0..<T {
    let MNK = readLine()!.split(separator: " ").map{ Int($0)! }

    var arr = [[Int]](repeating: [Int](repeating: 0, count: MNK[0]), count: MNK[1])

    for _ in 0..<MNK[2] {
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        arr[input[1]][input[0]] = 1
    }
    
    print(countBug(arr, MNK[0], MNK[1]))
}

func dfs(_ arr: inout [[Int]], _ x: Int, _ y: Int, _ M: Int, _ N: Int) {
    if x < 0 || x >= M || y < 0 || y >= N || arr[x][y] == 0 {
        return
    }
    
    arr[x][y] = 0
    
    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    for direction in directions {
        dfs(&arr, x + direction.0, y + direction.1, M, N)
    }
}

func countBug(_ arr: [[Int]], _ M: Int, _ N: Int) -> Int {
    var arr = arr
    var result = 0
    
    for i in 0..<N {
        for j in 0..<M {
            if arr[i][j] == 1 {
                result += 1
                dfs(&arr, i, j, N, M)
            }
        }
    }
    
    return result
}
