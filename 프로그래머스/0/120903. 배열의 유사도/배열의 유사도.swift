import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var answer = 0
    for i in s1 {
        for j in s2 {
            if i == j {
                answer += 1
                break
            }
        }
    }
    return answer
}