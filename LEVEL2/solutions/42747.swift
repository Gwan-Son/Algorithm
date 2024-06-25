import Foundation

func solution(_ citations:[Int]) -> Int {
    let arr_copy = citations.sorted(by: {$0 > $1})

    var result = 0

    for i in arr_copy.indices {
        if arr_copy[i] <= i {
            return i
        }
    }
    return arr_copy.count
}
