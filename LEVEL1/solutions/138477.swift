import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result: [Int] = []
    var temp_score: [Int] = []

    for i in score {
        temp_score.append(i)
        temp_score.sort() { $0 > $1}
        if temp_score.count > k {
            temp_score.removeLast()
        }

        result.append(temp_score.last!)
    }
    
    return result
}
