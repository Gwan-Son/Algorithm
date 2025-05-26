import Foundation

let input = readLine()!.map{ String($0) }

var result = ""
var stack = [String]()

func precedence(_ op: String) -> Int {
    switch op {
    case "+", "-": return 1
    case "*", "/": return 2
    default: return 0
    }
}

for i in input {
    if i >= "A" && i <= "Z" {
        result += i
    } else if i == "(" {
        stack.append(i)
    } else if i == ")" {
        while let last = stack.last, last != "(" {
            result += stack.removeLast()
        }
        stack.removeLast()
    } else {
        while let last = stack.last,
              last != "(",
              precedence(last) >= precedence(i) {
            result += stack.removeLast()
        }
        stack.append(i)
    }
}

while !stack.isEmpty {
    result += stack.removeLast()
}

print(result)