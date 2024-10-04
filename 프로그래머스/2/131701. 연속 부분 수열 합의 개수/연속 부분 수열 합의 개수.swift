import Foundation

func solution(_ elements:[Int]) -> Int {
    var result: Set<Int> = []
    var arr = elements + elements
    
    for i in 0..<elements.count {
        var sum = 0
        for j in 0..<elements.count {
            sum += arr[i+j]
            result.insert(sum)
        }
        sum = 0
    }
    
    
    return result.count
}