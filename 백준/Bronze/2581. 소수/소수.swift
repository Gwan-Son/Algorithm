import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var arr = [Int]()

func isPrime(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    for i in stride(from: 2, through: Int(sqrt(Double(n))), by: 1) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

for i in N...M {
    if isPrime(i) {
        arr.append(i)
    }
}

if arr.isEmpty {
    print(-1)
} else {
    print(arr.reduce(0, +))
    print(arr[0])
}
