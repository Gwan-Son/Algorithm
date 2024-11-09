import Foundation

let n = Int(readLine()!)!

var ropes: [Int] = []

for _ in 0..<n {
    let temp = Int(readLine()!)!
    ropes.append(temp)
}

ropes.sort()

var maxValue = 0

for i in 0..<n {
    let temp = ropes[i] * (n - i)
    maxValue = max(maxValue, temp)
}

print(maxValue)
