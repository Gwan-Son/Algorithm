import Foundation

let n = Int(readLine()!)!
let bowls = readLine()!.split(separator: " ").map { Int(String($0))! }

var counts: [Int: Int] = [:]
var maxCount = 0
for bowl in bowls {
    counts[bowl, default: 0] += 1
    maxCount = max(maxCount, counts[bowl]!) 
}

print(maxCount)