import Foundation

let input = readLine()!.map{ String($0) }

var result = ""
var stack = [String]()

for i in input {
    if i == "+" || i == "-" || i == "*" || i == "/" || i == "(" || i == ")" {
        if stack.isEmpty {
            stack.append(i)
        } else {
            if i == "(" {
                stack.append(i)
            } else if i == ")" {
                while stack.last != "(" {
                    result += stack.removeLast()
                }
                stack.removeLast()
            } else if i == "*" || i == "/" {
                while stack.last == "*" || stack.last == "/" {
                    result += stack.removeLast()
                }
                stack.append(i)
            } else {
                while stack.last == "+" || stack.last == "-" || stack.last == "*" || stack.last == "/" {
                    result += stack.removeLast()
                }
                stack.append(i)
            }
        }
    } else {
        result += i
    }
}

while !stack.isEmpty {
    result += stack.removeLast()
}

print(result)