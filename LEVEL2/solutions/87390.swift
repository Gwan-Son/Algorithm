import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var arr: [Int] = []
    var i = left / Int64(n)
    var j = left % Int64(n)

    for _ in 0...right - left {
        if j == n {
            i += 1
            j = 0
        }
        if i == j {
            arr.append(Int(i) + 1)
        } else if i < j {
            arr.append(Int(j) + 1)
        } else {
            arr.append(Int(i) + 1)
        }
        j += 1
    }
    return arr
}
