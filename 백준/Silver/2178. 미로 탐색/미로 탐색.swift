import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
let M = input[1]

var arr: [[Int]] = Array(repeating: [], count: N)

for i in 0..<N {
    let temp = readLine()!.map { Int(String($0))! }
    arr[i] = temp
}

let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

func findMinimumPath(_ x: Int, _ y: Int) {
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let (x , y) = queue.removeFirst()
        
        for direction in directions {
            let nextX = x + direction.0
            let nextY = y + direction.1
            
            if nextX < 0 || nextX >= N || nextY < 0 || nextY >= M {
                continue
            }
            
            if arr[nextX][nextY] == 0 {
                continue
            }
            
            if arr[nextX][nextY] == 1 {
                arr[nextX][nextY] = arr[x][y] + 1
                queue += [(nextX, nextY)]
            }
        }
    }
    
    print(arr[N - 1][M - 1])
}

findMinimumPath(0, 0)
