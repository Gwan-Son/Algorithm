import Foundation

func solution(_ name:String) -> Int {
    let str = name.map{ String($0) }
    let length = str.count
    var result = 0
    var num = Int.max
    
    for i in 0..<length {
        let count = Int(UnicodeScalar(str[i])!.value)
        result += min(count - 65, 91 - count)
        var index = i + 1
        
        if index < length {
            while str[index] == "A" {
                index += 1
                if index >= length { break }
            }
        }
        let tmp = [length - 1, i * 2 + length - index, i + (length - index) * 2].min()!
        num = min(num, tmp)
    }
    result += num
    
    return result
}