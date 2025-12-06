import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = 0, cur = 0, f = -2

for i in 0..<n {
    if arr[i] > 0 {
        cur += 1
    } else if i - f >= 2 {
        f = i
    } else {
        cur = 0
    }
    
    result = max(result, cur)
}

print(result)
