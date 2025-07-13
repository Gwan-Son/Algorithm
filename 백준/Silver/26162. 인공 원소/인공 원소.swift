import Foundation

let n = Int(readLine()!)!

func isPrime(_ n: Int) -> Bool {
    if n == 1 { return false }
    for i in stride(from: 2, through: n / 2, by: 1) {
        if n % i == 0 { return false }
    }
    return true
}

for _ in 0..<n {
    let a = Int(readLine()!)!
    var flag = false
    for i in stride(from: 2, through: a / 2, by: 1) {
        if isPrime(i) {
            if isPrime(a - i) {
                flag = true
                break
            }
        }
    }

    flag ? print("Yes") : print("No")
}
