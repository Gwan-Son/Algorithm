import Foundation

func solution(_ numbers:[Int]) -> Int {
    var arr = numbers.sorted()
    let n = arr.count
    return arr[n - 1] * arr[n - 2]
}