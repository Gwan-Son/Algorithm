import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days = [Int]()
    var result = [Int]()
    
    for i in 0..<progresses.count {
        var day = (100 - progresses[i]) / speeds[i]
        if (100 - progresses[i]) % speeds[i] != 0 {
            day += 1
        }
        days.append(day)
    }
    while !days.isEmpty {
        let day = days.removeFirst()
        var count = 1
        while !days.isEmpty && day >= days.first! {
            days.removeFirst()
            count += 1
        }
        result.append(count)
    }
    
    return result
}