import Foundation

let n = Int(readLine()!)!

var arr: [Int] = Array(repeating: 0, count: n)
var answer = 0
var stack: [Int] = []

for i in 0..<n {
    arr[i] = Int(readLine()!)!
}


for i in 0..<n {
    while !stack.isEmpty && stack.last! <= arr[i] {
        stack.removeLast()
    }
    
    stack.append(arr[i])
    answer += stack.count - 1
}

print(answer)
