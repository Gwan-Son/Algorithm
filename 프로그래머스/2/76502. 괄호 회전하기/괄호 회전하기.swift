import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    let length = s.count
    var temp = s
    let brackets = ["[","]","(",")","{","}"]
    for i in 1...6 {
        temp = temp.replacingOccurrences(of: brackets[i - 1], with: String(i))
    }
    
    for _ in 0..<length {
        var stack = [Character]()
        for j in temp.indices {
            if stack.isEmpty {
                stack.append(temp[j])
            }
            else if ((stack.last?.wholeNumberValue)! + 1) == temp[j].wholeNumberValue {
                stack.removeLast()
            } else {
                stack.append(temp[j])
            }
        }
        if stack.isEmpty {
            answer += 1
        }
        let first = temp.removeFirst()
        temp.append(first)
    }
    
    return answer
}