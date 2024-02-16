import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum: Int = 0
    numbers.forEach {
        sum += $0
    }
    return 45-sum
}
