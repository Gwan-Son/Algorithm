func solution(_ n:Int64) -> Int64 {
    var s: String = String(Array(String(n)).sorted(by: >))
    return Int64(s)!
}
