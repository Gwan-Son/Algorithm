import Foundation

// N * M 의 배열이 주어짐
// 1~5까지는 CCTV
// 6은 벽
// 사각지대를 찾는 것
// 배열의 처음부터 끝까지 탐색하면서 1~5를 찾고, 해당하는 CCTV의 움직임을 임시배열에 저장하여 마지막까지 계산한 뒤, result에 min값 계산
let NM = readLine()!.split(separator: " ").map { Int($0)! }
let rows = NM[0]
let columns = NM[1]
var result = 65
var cctv: [[Int]] = []
let mode: [[[Int]]] = [
    [],
    [[0], [1], [2], [3]],
    [[0, 2], [1, 3]],
    [[0, 1], [1, 2], [2, 3], [0, 3]],
    [[0, 1, 2], [0, 1, 3], [1, 2, 3], [0, 2, 3]],
    [[0, 1, 2, 3]]
]
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

var arr = [[Int]](repeating: [Int](repeating: 0, count: columns), count: rows)

for (i, _) in arr.enumerated() {
    let input = readLine()!
    let elements = input.components(separatedBy: " ").map { Int($0)! }
    arr[i] = elements
    for (j, _) in elements.enumerated() {
        if elements[j] > 0 && elements[j] < 6 {
            cctv.append([elements[j], i, j])
        }
    }
}

func fill(arr: inout [[Int]], mode: [Int], x: Int, y: Int) {
    for i in mode {
        var nx = x
        var ny = y
        while true {
            nx += dx[i]
            ny += dy[i]
            if nx < 0 || ny < 0 || nx >= rows || ny >= columns {
                break
            }
            if arr[nx][ny] == 6 { break }
            else if arr[nx][ny] == 0 {
                arr[nx][ny] = -1
            }
        }
    }
}

func dfs(arr: [[Int]], depth: Int) {
    if depth == cctv.count {
        var area = 0
        for i in arr.indices {
            area += arr[i].filter{ $0 == 0 }.count
        }
        result = min(result, area)
        return
    }
    var tempArr = arr
    let cctv_num = cctv[depth][0]
    let x = cctv[depth][1]
    let y = cctv[depth][2]
    for i in mode[cctv_num] {
        fill(arr: &tempArr, mode: i, x: x, y: y)
        let tempDepth = depth + 1
        dfs(arr: tempArr, depth: tempDepth)
        tempArr = arr
    }
    
}

dfs(arr: arr, depth: 0)
print(result)
