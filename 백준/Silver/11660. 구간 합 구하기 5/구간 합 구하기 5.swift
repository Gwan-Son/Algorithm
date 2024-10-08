let input = readLine()!.split(separator: " ").map{ Int($0)! }
// input[0] == N
// input[1] == M

var sumArr: [[Int]] = Array(repeating: Array(repeating: 0, count: input[0] + 1), count: input[0] + 1)

var arr: [[Int]] = Array(repeating: [], count: input[0])

for i in 0..<input[0] {
    arr[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

for i in 1...input[0] {
    for j in 1...input[0] {
        sumArr[i][j] = arr[i - 1][j - 1] + sumArr[i][j - 1]
    }
}

for _ in 0..<input[1] {
    let xyrc = readLine()!.split(separator: " ").map{ Int($0)! }
    let x = xyrc[0]
    let y = xyrc[1]
    let r = xyrc[2]
    let c = xyrc[3]
    
    if x == r && y == c {
        print(arr[r - 1][c - 1])
    } else {
        var result = 0
        for i in x...r {
            result += sumArr[i][c] - sumArr[i][y - 1]
        }
        print(result)
    }
}