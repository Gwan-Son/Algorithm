import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let revArr = arr.reversed()
var answer = [Int]()
var stack = [Int]()

for i in revArr {
    while true {
        if stack.isEmpty {
            answer.append(-1)
            stack.append(i)
            break
        } else if stack.last! > i {
            answer.append(stack.last!)
            stack.append(i)
            break
        } else {
            stack.removeLast()
        }
    }
}

print(answer.reversed().map{ String($0) }.joined(separator: " "))