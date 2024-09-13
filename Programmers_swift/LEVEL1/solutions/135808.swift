import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var index = m - 1

    let score_copy = score.sorted(by: {$0 > $1})

    while index < score.count {
        if score_copy[index] >= k {
            result += k * m
        } else {
            result += score_copy[index] * m
        }
        index += m
    }
    
    return result
}
