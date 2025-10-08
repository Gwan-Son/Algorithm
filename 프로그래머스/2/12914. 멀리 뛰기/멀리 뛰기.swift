func solution(_ n: Int) -> Int {
    var fibo: [Int] = [1, 2, 3]
    
    if n > 3 {
        for i in 3...n {
            fibo.append((fibo[i - 1] + fibo[i - 2]) % 1234567)
        }
    }
    
    return fibo[n-1]
}