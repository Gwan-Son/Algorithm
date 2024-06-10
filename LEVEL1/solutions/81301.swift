import Foundation

func solution(_ s:String) -> Int {
    var s_copy = s

    var numbers = [["zero","0"],["one","1"],["two","2"],["three","3"],["four","4"],["five","5"],["six","6"],["seven","7"],["eight","8"],["nine","9"]]


    for i in numbers {
        s_copy = s_copy.replacingOccurrences(of: i[0], with: i[1])
    }
    return Int(s_copy)!
}
