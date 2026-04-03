import Foundation

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[0], m = nm[1]

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

if arr.reduce(0, +) < m {
    print(-1)
} else {
    var count = 0
    var result = 0
    for i in (0..<n).reversed() {
        count += arr[i]
        result = i + 1
        if count >= m { break }
    }
    print(result)
}
