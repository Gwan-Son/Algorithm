func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var number: Int = 0
    var numberString: String = " "

    for _ in 0..<(t * m) {
        numberString += String(number, radix: n).uppercased()
        number += 1
    }

    let numberArr = Array(numberString)
    let filteredNumberArr: [String] = stride(from: p, to: numberArr.count, by: m).map { String(numberArr[$0]) }
    numberString = filteredNumberArr.joined()
    return String(numberString.prefix(t))
}