import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var minDistance = Int.max
var city = [[Int]](repeating: [], count: n)
var chicken = [(Int, Int)]()
var house = [(Int, Int)]()

for i in 0..<n {
    city[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

for i in 0..<n {
    for j in 0..<n {
        if city[i][j] == 2 {
            chicken.append((i, j))
        } else if city[i][j] == 1 {
            house.append((i, j))
        }
    }
}

func checkDistance(_ visited: [Bool]) -> Int {
    var distance = 0
    for i in 0..<house.count {
        var minDistance = Int.max
        for j in 0..<chicken.count {
            if visited[j] {
                let temp = abs(house[i].0 - chicken[j].0) + abs(house[i].1 - chicken[j].1)
                minDistance = min(minDistance, temp)
            }
        }
        distance += minDistance
    }
    
    return distance
}

var visited = [Bool](repeating: false, count: chicken.count)

func dfs(_ index: Int, _ count: Int) {
    if count == m {
        minDistance = min(minDistance, checkDistance(visited))
        return
    }
    
    for i in index..<chicken.count {
        if visited[i] { continue }
        visited[i] = true
        dfs(i, count + 1)
        visited[i] = false
    }
}

dfs(0, 0)

print(minDistance)
