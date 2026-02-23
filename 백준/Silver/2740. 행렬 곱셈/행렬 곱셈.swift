import Foundation

let nm = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = nm[0]
let m = nm[1]

var aArr: [[Int]] = []
aArr.reserveCapacity(n)
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").compactMap { Int($0) }
    aArr.append(line)
}

let mk = readLine()!.split(separator: " ").compactMap { Int($0) }
let k = mk[1]

var bArr: [[Int]] = []
bArr.reserveCapacity(m)
for _ in 0..<m {
    let line = readLine()!.split(separator: " ").compactMap { Int($0) }
    bArr.append(line)
}

var result = Array(repeating: Array(repeating: 0, count: k), count: n)

for i in 0..<n {
    for j in 0..<k {
        var sum = 0
        for l in 0..<m {
            sum += aArr[i][l] * bArr[l][j]
        }
        result[i][j] = sum
    }
}

for i in 0..<n {
    let line = result[i].map { String($0) }.joined(separator: " ")
    print(line)
}
