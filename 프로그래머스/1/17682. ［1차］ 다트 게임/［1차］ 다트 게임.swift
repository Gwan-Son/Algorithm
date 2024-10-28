import Foundation

func solution(_ dartResult:String) -> Int {
    // S - Single D - Double T - Triple
    // * - Star # - Acha
    
    let darts = dartResult.map{ String($0) }
    var stack: [Int] = []
    
    var temp = ""
    for dart in darts {
        if dart == "S" || dart == "D" || dart == "T" {
            switch dart {
            case "S":
                stack.append(Int(temp)!)
            case "D":
                stack.append(Int(temp)! * Int(temp)!)
            case "T":
                stack.append(Int(temp)! * Int(temp)! * Int(temp)!)
            default:
                break
            }
            temp = ""
        } else if dart == "*" {
            if stack.count > 1 {
                stack[stack.count - 2] = stack[stack.count - 2] * 2
            }
            stack[stack.count - 1] = stack[stack.count - 1] * 2
        } else if dart == "#" {
            stack[stack.count - 1] = stack[stack.count - 1] * -1
        } else {
            temp += dart
        }
    }
    
    return stack.reduce(0, +)
}