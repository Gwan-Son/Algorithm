import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var even = 0
    var odd = 0
    
    for i in num_list {
        if i.isMultiple(of: 2) {
            even += 1
        } else {
            odd += 1
        }
    }
    
    return [even, odd]
}