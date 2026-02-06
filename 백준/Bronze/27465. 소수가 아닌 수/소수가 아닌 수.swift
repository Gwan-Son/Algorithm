import Foundation

var n = Int(readLine()!)!

func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    
    for i in stride(from: 2, to: Int(sqrt(Double(n))), by: 1) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

while isPrime(n) {
    n += 1
}

print(n)
