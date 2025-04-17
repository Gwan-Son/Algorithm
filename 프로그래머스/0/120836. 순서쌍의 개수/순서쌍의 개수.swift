import Foundation

func solution(_ n:Int) -> Int {
    let sqrt = Int(Double(n).squareRoot())
	var answer = 0
    for i in stride(from: 1, through: sqrt, by: 1) {
        if n % i == 0 {
            if i * i == n {
                answer += 1
            } else {
                answer += 2
            }
        }
    }

    return answer
}