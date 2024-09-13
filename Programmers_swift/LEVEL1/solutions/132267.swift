import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n_copy = n
    var answer = 0
    while n_copy >= a {
        answer += (n_copy / a) * b
        n_copy = (n_copy / a) * b + (n_copy % a)
    }
    return answer
}
