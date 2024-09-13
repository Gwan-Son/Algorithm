import Foundation

func solution(_ food:[Int]) -> String {
    var answer = ""
    for i in 1..<food.count {
        var temp = food[i] / 2
        answer = answer + String(repeating: String(i), count: temp)
    }
    return answer + "0" + answer.reversed()
}
