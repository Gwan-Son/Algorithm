let N = Int(readLine()!)!

var arr: [[Int]] = []

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 1..<N {
    for j in 0..<arr[i].count {
        if j == 0 {
            arr[i][j] += arr[i - 1][j]
        } else if j == arr[i].count - 1 {
            arr[i][j] += arr[i - 1][j - 1]
        } else {
            arr[i][j] += max(arr[i - 1][j - 1], arr[i - 1][j])
        }
    }
}

print(arr[N - 1].max()!)