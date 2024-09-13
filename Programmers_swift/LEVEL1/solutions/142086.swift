import Foundation

func solution(_ s:String) -> [Int] {
    return s.enumerated().map{(i,c) in i - (Array(s)[0..<i].lastIndex(of: c) ?? i + 1)}
}




/* 4번 시간 초과
import Foundation

func solution(_ s:String) -> [Int] {
    var sTemp = s.map{$0}
    var alphabet: [Int] = Array(repeating: -1, count: 26)
    var result: [Int] = Array(repeating: -1, count: s.count)

    for i in sTemp.indices{
        var index = sTemp[i].asciiValue!
        index -= 97
        if alphabet[Int(index)] == -1 {
            result[i] = alphabet[Int(index)]
        } else {
            result[i] = i - alphabet[Int(index)]
        }
        alphabet[Int(index)] = i
    }
    return result
}
*/
