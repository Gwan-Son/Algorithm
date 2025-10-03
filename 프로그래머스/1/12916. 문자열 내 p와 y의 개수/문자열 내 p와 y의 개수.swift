import Foundation

func solution(_ s:String) -> Bool
{
    let temp: String = s.lowercased()
    let cntP: Int = temp.filter{ $0 == "p"}.count
    let cntY: Int = temp.filter{ $0 == "y"}.count
    return cntP == cntY ? true : false
}