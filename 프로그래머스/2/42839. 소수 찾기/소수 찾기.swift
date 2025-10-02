import Foundation

func isPrime(_ number: Int) -> Bool {
    if number <= 1 { return false }
    if number == 2 { return true}
    if number % 2 == 0 { return false }
    
    for i in stride(from: 3, through: Int(sqrt(Double(number))), by: 2) {
        if number % i == 0 { return false }
    }
    
    return true
}

func solution(_ numbers:String) -> Int {
    let digits = numbers.map{ String($0) }
    var isUsed = [Bool](repeating: false, count: digits.count)
    var arr = Set<Int>()
    
    func dfs(_ str: String) {
        if !str.isEmpty {
            if let number = Int(str) {
                if isPrime(number) {
                    arr.insert(number)
                }
            }
        }
        
        for i in 0..<digits.count {
            if !isUsed[i] {
                isUsed[i] = true
                dfs(str + digits[i])
                isUsed[i] = false
            }
        }
    }
    
    dfs("")
    
    return arr.count
}