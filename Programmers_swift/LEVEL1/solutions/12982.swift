import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum: Int = 0
    for (i,element) in d.sorted().enumerated() {
        sum += element
        if budget <= sum {
            if budget == sum {
                return i + 1
            } else {
                return i
            }
        }
    }
    return d.count
}
