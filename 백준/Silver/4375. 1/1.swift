import Foundation

func solution(_ n: Int) -> Int {
    if (n % 2 == 0) || (n % 5 == 0) {
        return -1
    }
    
    var num = 0
    var cnt = 1
    while true {
        num = (10 * num + 1) % n
        if num % n == 0 {
            return cnt
        }
        cnt += 1
    }
}

while let input = readLine() {
    let n = Int(input)!
    print(solution(n))
}