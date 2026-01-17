import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!

var result = 0
for _ in 0..<n - 1 {
    for _ in 0..<m - 1 {
        result += 1
    }
}

print(result * 2)
