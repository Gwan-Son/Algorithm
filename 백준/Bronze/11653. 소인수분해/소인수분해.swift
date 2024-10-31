import Foundation

var N = Int(readLine()!)!

var ans: [Int] = []

func divide(_ n: Int) {
    for i in stride(from: 2, through: n, by: 1) {
        if n % i == 0 {
            ans.append(i)
            N = n / i
            break
        }
    }
}
 
if N > 1 {
    while N > 1 {
        divide(N)
    }
}

ans.forEach{ print($0) }
