import Foundation

let N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{ Int(String($0))! }
var operations = readLine()!.split(separator: " ").map{ Int(String($0))! }

var minResult = Int.max
var maxResult = Int.min

func dfs(_ index: Int, _ result: Int) {
    if index == N - 1 {
        minResult = min(minResult, result)
        maxResult = max(maxResult, result)
        return
    }
    
    for i in 0..<operations.count {
        if operations[i] > 0 {
            operations[i] -= 1
            switch i {
            case 0:
                dfs(index + 1, result + numbers[index + 1])
            case 1:
                dfs(index + 1, result - numbers[index + 1])
            case 2:
                dfs(index + 1, result * numbers[index + 1])
            case 3:
                dfs(index + 1, result / numbers[index + 1])
            default:
                break
            }
            operations[i] += 1
        }
    }
}

dfs(0, numbers[0])
print(maxResult)
print(minResult)
