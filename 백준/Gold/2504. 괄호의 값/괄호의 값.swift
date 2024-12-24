import Foundation

let input = readLine()!.map { String($0) }
let value = ["(": 2, "[": 3]
let pair = [")": "(", "]": "["]
var stack = [String]()
var temp = 1
var result = 0

for i in 0..<input.count {
    if input[i]=="(" || input[i]=="[" {
        temp *= value[input[i]]!
        stack.append(input[i])
    } else {
        if stack.isEmpty || stack.last! != pair[input[i]] {
            result = 0
            break
        } else {
            if input[i-1]==pair[input[i]] { result += temp }
            temp /= value[stack.removeLast()]!
        }
    }
}
print(stack.isEmpty ? result : 0)
