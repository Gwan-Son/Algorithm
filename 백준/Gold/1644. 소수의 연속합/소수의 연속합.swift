import Foundation

let N = Int(readLine()!)!
var primeArr = [Int]()
var answer = 0

func mkPrime(_ n: Int) {
    var tempArr = [Int](repeating: 0, count: n + 1)
    
    for i in 2...n {
        tempArr[i] = i
    }
    
    for i in 2...n {
        if tempArr[i] == 0 { continue }
        
        for j in stride(from: i * 2, through: n, by: i) {
            tempArr[j] = 0
        }
    }
    
    for i in 2...n {
        if tempArr[i] != 0 {
            primeArr.append(tempArr[i])
        }
    }
}

if N == 1 {
    print(0)
    exit(0)
}
mkPrime(N)

var start = 0
var end = 0
var sum = 0

while end <= primeArr.count {
    if sum < N {
        if end == primeArr.count { break }
        sum += primeArr[end]
        end += 1
    } else if sum >= N {
        sum -= primeArr[start]
        start += 1
    }
    if sum == N {
        answer += 1
    }
}

print(answer)