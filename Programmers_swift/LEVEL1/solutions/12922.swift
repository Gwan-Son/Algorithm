func solution(_ n:Int) -> String {
    var s: String = ""
    
    for _ in 0..<n/2{
        s += "수박"
    }
    
    return n % 2 == 0 ? s : s + "수"
}
