import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]

var queue = Array(1...n)
var result = [Int]()
var index = 0

for _ in 0..<n {
    index = (index + k - 1) % queue.count
    result.append(queue.remove(at: index))

    if index == queue.count {
        index = 0
    }
}

print("<\(result.map{ String($0) }.joined(separator: ", "))>")