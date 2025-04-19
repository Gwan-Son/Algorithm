import Foundation

func solution(_ n:Int) -> Int {
    let temp = Int(sqrt(Double(n)))
    if temp * temp == n {
        return 1
    } else {
        return 2
    }
}