import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sum: Int = 0
    for i in left...right {
        var temp: Double = sqrt(Double(i))
        if temp.truncatingRemainder(dividingBy: 1.0) == 0{
            sum -= i
        } else {
            sum += i
        }
    }
    return sum
}
