import Foundation

func solution(_ s:String) -> Bool
{
    let temp: String = s.lowercased()
    var cntP: Int = 0
    var cntY: Int = 0
    
    for i in temp{
        if i == "p" {cntP += 1}
        if i == "y" {cntY += 1}
    }
    if cntP == cntY {
        return true
    } else {
        return false
    }
}
