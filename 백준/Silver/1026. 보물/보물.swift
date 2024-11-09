import Foundation

let n = Int(readLine()!)!

var a = readLine()!.split(separator: " ").map{ Int($0)! }
var b = readLine()!.split(separator: " ").map{ Int($0)! }

a.sort(by: <)
b.sort(by: >)

var sum = 0

for i in 0..<n {
    sum += a[i] * b[i]
}

print(sum)
