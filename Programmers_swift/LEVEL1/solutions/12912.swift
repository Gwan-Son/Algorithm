import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    if a==b {return Int64(a)}
    var result: Int64 = 0
    if b > a {// b가 a보다 클 때
        let tempAdd = b + a
        let tempMinus = b - a
        if tempAdd.isMultiple(of: 2) {
           result = Int64(tempAdd*(tempMinus/2)+(tempAdd/2))
        } else {
            result = Int64(tempAdd*(tempMinus/2 + 1))
        }
    } else {// a가 b보다 클 때
        let tempAdd = b + a
        let tempMinus = a - b
        if tempAdd.isMultiple(of: 2) {
            result = Int64(tempAdd*(tempMinus/2)+(tempAdd/2))
        } else {
            result = Int64(tempAdd*(tempMinus/2 + 1))
        }
    }
    return result
}
