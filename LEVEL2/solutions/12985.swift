import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var answer: Int = 1
    var a_copy = a
    var b_copy = b
    while(a_copy != b_copy) {
        a_copy = (a_copy + 1) / 2
        b_copy = (b_copy + 1) / 2
        answer += 1
        if a_copy == b_copy {
            answer -= 1
        }
    }
    
    return answer
}
