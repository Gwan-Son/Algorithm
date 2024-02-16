func solution(_ arr:[Int]) -> Double {
    var avg: Double = 0
    
    for i in 0..<arr.count {
        avg += Double(arr[i])
    }
    
    avg /= Double(arr.count)
    
    return avg
}
