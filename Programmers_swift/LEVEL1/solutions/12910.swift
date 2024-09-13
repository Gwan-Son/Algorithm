func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var tempArr = arr.sorted()
    var resultArr: [Int] = []
    
    tempArr.forEach{
        if $0 % divisor == 0 {
            resultArr.append($0)
        }
    }
    if resultArr.count == 0 {
        resultArr.append(-1)
    }
    return resultArr
}
