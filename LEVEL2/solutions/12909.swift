import Foundation

func solution(_ s:String) -> Bool
{    
    var temp: Int = 0
    
    for i in s{
        if i == "(" {
            temp += 1
        } else {
            temp -= 1
        }
        if temp == -1{
            return false
        }
    }
    return temp == 0
}
