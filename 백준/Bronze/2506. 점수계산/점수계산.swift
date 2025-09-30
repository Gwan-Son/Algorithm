import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var score = 0
var count = 0

for i in 0..<n {
    if arr[i] == 0 { count = 0 }
    else {
        count += 1
        score += count
    }
}

print(score)
