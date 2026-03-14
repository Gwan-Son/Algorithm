import Foundation

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[0], m = nm[1]

var arr = [[Int]]()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append(line)
}

var nineCount = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
var count = 0

for i in 0..<n {
    for j in 0..<m {
        var temp = 0
        while arr[i][j] > 0 {
            count += arr[i][j] % 10 == 9 ? 1 : 0
            temp += arr[i][j] % 10 == 9 ? 1 : 0
            arr[i][j] /= 10
        }
        nineCount[i][j] = temp
    }
}

var maxCount = 0
for i in 0..<n {
    maxCount = max(maxCount, nineCount[i].reduce(0, +))
}

for i in 0..<m {
    var temp = 0
    for j in 0..<n {
        temp += nineCount[j][i]
    }
    maxCount = max(maxCount, temp)
}

print(count - maxCount)
