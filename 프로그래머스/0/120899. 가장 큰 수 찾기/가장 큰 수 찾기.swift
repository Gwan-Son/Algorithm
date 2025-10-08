import Foundation

func solution(_ array:[Int]) -> [Int] {
    let maxValue = array.max()!
    return [maxValue, array.firstIndex(of: maxValue)!]
}