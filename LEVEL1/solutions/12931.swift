import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var temp: Int = n
    
    while temp > 0 {
        answer = answer + (temp % 10)
        temp /= 10
    }
    
    return answer
}
