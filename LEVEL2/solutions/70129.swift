import Foundation

func solution(_ s:String) -> [Int] {
    var count: Int = 0
    var testCase: Int = 0
    var s_temp = s
    while(s_temp != "1") {
        var temp: String = ""
        for i in s_temp {
            if i == "1" {
                temp += "1"
            } else {
                count += 1
            }
        }
        s_temp = String(temp.count,radix: 2)
        testCase += 1
    }
    
    return [testCase, count]
}

/*
replacingOccurrences를 사용한 풀이

import Foundation

func solution(_ s: String) -> Array<Int> {
    var copiedS = s
    var removedZero = 0
    var count = 0

    while copiedS != "1" {
        removedZero += copiedS.replacingOccurrences(of: "1", with: "").count
        copiedS = String(copiedS.replacingOccurrences(of: "0", with: "").count, radix: 2)
        count += 1
    }
    return [count, removedZero]
}
*/
