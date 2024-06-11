func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for i in 0..<n {
        var temp = String(Int(String(arr1[i], radix: 2))! + Int(String(arr2[i], radix: 2))!)
        while temp.count != n { temp = "0" + temp }
        temp = temp.replacingOccurrences(of: "1", with: "#")
        temp = temp.replacingOccurrences(of: "2", with: "#")
        temp = temp.replacingOccurrences(of: "0", with: " ")
        answer.append(temp)
    }
    return answer
}
