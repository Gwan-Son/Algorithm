import Foundation

let n = Int(readLine()!)!
let startArr: [Int] = [2, 3, 5, 7]

func isPrime(_ num: Int) -> Bool {
    if num == 1 {
        return false
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

func dfs(_ num: Int, _ depth: Int) {
    if depth == n {
        print(num)
        return
    }
    
    for i in 1...9 {
        let nextNum = num * 10 + i
        if nextNum % 2 != 0 && isPrime(nextNum) {
            dfs(nextNum, depth + 1)
        }
    }
}

for i in startArr {
    dfs(i, 1)
}