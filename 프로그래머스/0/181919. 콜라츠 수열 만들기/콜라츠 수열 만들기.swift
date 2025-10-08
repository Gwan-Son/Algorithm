import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = [n]
    
    var n_copy = n
    while n_copy > 1 {
        if n_copy % 2 == 0 {
            n_copy /= 2
        } else {
            n_copy = n_copy * 3 + 1
        }
        result.append(n_copy)
    }
    
    return result
}