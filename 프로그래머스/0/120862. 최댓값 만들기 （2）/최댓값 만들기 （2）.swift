import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = Int.min
    
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if i != j {
                result = max(result, numbers[i] * numbers[j])
            }
        }
    }
    
    return result
}