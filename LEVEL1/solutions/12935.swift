func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    } else {
        var copyArr = arr
        var tempArr = arr.sorted()
        copyArr.remove(at: copyArr.firstIndex(of: tempArr[0])!)
        return copyArr
    }
}
