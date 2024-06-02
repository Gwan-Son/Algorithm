import Foundation

func solution(_ n:Int) -> Int 
{
    var ans: Int = 0
    var n_copy = n
    while(n_copy != 0) {
        if n_copy % 2 == 1 {
            n_copy -= 1
            ans += 1
        } else {
            n_copy /= 2
        }
    }
    return ans
}
