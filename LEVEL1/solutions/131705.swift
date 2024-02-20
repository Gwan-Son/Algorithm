import Foundation

func solution(_ number:[Int]) -> Int {
    var cnt: Int = 0

    for i in 0..<number.count - 2{
        for j in i + 1..<number.count - 1{
            for k in j + 1..<number.count{
                if number[i] + number[j] + number[k] == 0{
                    cnt += 1
                }
            }
        }
    }
    return cnt
}
