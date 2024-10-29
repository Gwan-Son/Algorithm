import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alpha = "abcdefghijklmnopqrstuvwxyz"
    var answer = ""
    let sArr = s.map { String($0) }
    let skipArr = skip.map{ String($0) }
    alpha.removeAll(where: { skipArr.contains(String($0)) })
    let alphaArr = alpha.map { String($0) }
    
    for i in sArr {
        var sIndex = alphaArr.firstIndex(of: i)!
        sIndex = (sIndex + index) % alphaArr.count
        answer += alphaArr[sIndex]
    }
    
    return answer
}