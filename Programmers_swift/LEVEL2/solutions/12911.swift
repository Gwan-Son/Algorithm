import Foundation

func solution(_ n:Int) -> Int
{
    let result = nextBigNumber(n)
    return result
}

func countOnes(_ number: Int) -> Int {
    return String(number, radix: 2).filter { $0 == "1"}.count
}

func nextBigNumber(_ n: Int) -> Int {
    let numberOfOnes = countOnes(n)
    var answer = n + 1
    while countOnes(answer) != numberOfOnes {
        answer += 1
    }
    return answer
}


/*
nonzeroBitCount를 활용한 풀이
import Foundation

func solution(_ n:Int) -> Int {
    var answer : Int = n + 1

    while true {
        if n.nonzeroBitCount == answer.nonzeroBitCount {
            break;
        }
        answer += 1
    }

    return answer
}
*/
