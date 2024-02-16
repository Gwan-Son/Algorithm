import Foundation

func solution(_ n:Int64) -> Int64 {
    var temp: Double = sqrt(Double(n))
    if temp.truncatingRemainder(dividingBy: 1.0) == 0{
        return Int64(pow(temp+1,2.0))
    } else {
        return -1
    }
}
