import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0

    for i in 1...number {
        var temp = 1
        var count = 0
        while temp * temp <= i {
            if temp * temp == i {
                count += 1
            }
            else if i % temp == 0 {
                count += 2
            }
            temp += 1
        }
        if count <= limit {
            result += count
        } else {
            result += power
        }
    }
    
    return result
}
