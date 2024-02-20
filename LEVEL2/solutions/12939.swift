func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map{Int($0)!}.sorted()
    return "\(arr[0]) \(arr[arr.count - 1])"
}
