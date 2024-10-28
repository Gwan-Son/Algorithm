import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    let sArr = s.map{ String($0) }
    var firstString = ""
    var tempArr = [String]()
    
    for i in 0..<sArr.count {
        if tempArr.isEmpty {
            firstString = sArr[i]
            tempArr.append(firstString)
        } else {
            tempArr.append(sArr[i])
            if (tempArr.filter{ $0 == firstString }.count) == (tempArr.filter{ $0 != firstString }.count) {
                result += 1
                tempArr = []
            }
        }
        if i == sArr.count - 1 {
            if tempArr.count > 0 {
                result += 1
            }
        }
    }
    
    return result
}