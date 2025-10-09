import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var findStr = ""
    let patArr = pat.map{ String($0) }
    for i in 0..<patArr.count {
        if patArr[i] == "A" { findStr += "B" }
        else { findStr += "A" }
    }
    return myString.contains(findStr) ? 1 : 0
}