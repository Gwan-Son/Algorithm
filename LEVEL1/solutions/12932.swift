func solution(_ n:Int64) -> [Int] {
    var arr: [Int] = []
    
    var temp: Int64 = n
    
    while temp > 0 {
        arr.append(Int(temp%10))
        temp /= 10
    }
    
    return arr
}
