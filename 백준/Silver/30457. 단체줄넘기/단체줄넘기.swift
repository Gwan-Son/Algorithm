import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
var used = [Bool](repeating: false, count: n)

var result = 0

func ropeJump(_ prev: Int) {
    var prev = prev
    for i in 0..<n {
        if !used[i] && arr[i] > prev {
			used[i] = true
            prev = arr[i]
			result += 1
        }
    }
}
for _ in 0..<2 {
    for i in 0..<n {
        if !used[i] {
            used[i] = true
            result += 1
            ropeJump(arr[i])
            break
        }
    }
}

print(result)
