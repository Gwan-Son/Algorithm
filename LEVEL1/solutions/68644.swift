import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer: [Int] = []

    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if i != j {
                var temp = numbers[i] + numbers[j]
                if !answer.contains(temp) {
                    answer.append(temp)
                }
            }
        }
    }
    return answer.sorted()
}
