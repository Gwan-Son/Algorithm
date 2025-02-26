import Foundation

let n = Int(readLine()!)!
var arr = [[Int]](repeating: [Int](repeating: 100001, count: n), count: n)
var answer: [Int] = []

for i in 0..<n {
    arr[i][i] = 0
}

while let line = readLine()?.split(separator: " ").map({ Int($0)! }) {
    if line[0] == -1 && line[1] == -1 { break }
    arr[line[0]-1][line[1]-1] = 1
    arr[line[1]-1][line[0]-1] = 1
}


// floyd warshall
for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            arr[i][j] = min(arr[i][j], arr[i][k] + arr[k][j])
        }
    }
}

var minValue = Int.max
arr.forEach { arr in
    minValue = min(minValue, arr.filter{ $0 != 100001 }.max()!)
}

for i in 0..<n {
    if arr[i].filter({ $0 != 100001 }).max()! == minValue {
        answer.append(i + 1)
    }
}

print(minValue, answer.count)
print(answer.map{ String($0) }.joined(separator: " "))