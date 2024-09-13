func solution(_ x:Int) -> Bool {
    var temp: Int = x
    var num: Int = 0
    
    while temp > 0 {
        num += (temp%10)
        temp /= 10
    }
    
    return x % num == 0 ? true : false
}
