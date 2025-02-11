import Foundation

var arr = [Int]()
var sum = 0

for _ in 0..<7 {
    let input = Int(readLine()!)!
    if input % 2 != 0 {
        arr.append(input)
        sum += input
    }
}

if arr.isEmpty {
    print(-1)
} else {
    arr.sort()
    print(sum)
    print(arr.first!)
}