func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr: [Int64] = Array(repeating: 0, count: n)
    
    for i in 1...n {
        arr[i - 1] = Int64(x) * Int64(i)
    }
    
    return arr
}
