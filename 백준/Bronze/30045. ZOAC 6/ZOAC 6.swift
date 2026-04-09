import Foundation

let n = Int(readLine()!)!

var count = 0

for _ in 0..<n {
    let line = readLine()!
    if line.contains("01") || line.contains("OI") {
        count += 1
    }
}

print(count)