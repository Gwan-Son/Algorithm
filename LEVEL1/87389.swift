import Foundation

func solution(_ n:Int) -> Int {
    let temp: Int = n - 1
    
    for i in 2...temp {
        if (temp % i == 0){
            return i
        }
    }
    return 0
}
