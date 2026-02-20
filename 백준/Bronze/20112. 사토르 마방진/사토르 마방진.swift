import Foundation

let n = Int(readLine()!)!

var arr = [[String]]()

for _ in 0..<n {
    let line = readLine()!.map{ String($0) }
    arr.append(line)
}

var copied = [[String]](repeating: [String](repeating: "", count: n), count: n)

for i in 0..<n {
    for j in 0..<n {
        copied[i][j] = arr[j][i]
    }
}

for i in 0..<n {
    if copied[i].joined() != arr[i].joined() {
        print("NO")
        exit(0)
    }
}

print("YES")
