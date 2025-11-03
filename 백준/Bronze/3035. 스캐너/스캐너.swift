import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let r = input[0], c = input[1], zr = input[2], zc = input[3]

var arr = [String]()
arr.reserveCapacity(r)
for _ in 0..<r {
    if let line = readLine() {
        arr.append(line)
    }
}

for i in 0..<r {
    var scaledLine = String()
    scaledLine.reserveCapacity(c * zc)
    for ch in arr[i] {
        scaledLine += String(repeating: ch, count: zc)
    }
    for _ in 0..<zr {
        print(scaledLine)
    }
}
