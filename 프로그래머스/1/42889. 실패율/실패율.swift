import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failure = [Int: Double]()
    var total = Double(stages.count)
    var countArr = Array(repeating: 0, count: N+2)

    for stage in stages {
        countArr[stage] += 1
    }

    for i in 1..<N+1 {
        if countArr[i] == 0 {
            failure[i] = 0.0
        } else {
            total = total - Double(countArr[i])
            failure[i] = Double(countArr[i]) / total
        }
    }

    return failure.sorted(by: <).sorted(by: { $0.1 > $1.1 }).map{ $0.key }
}