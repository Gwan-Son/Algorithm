import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var temp = 0
    var frequencyDict: [Int: Int] = [:]
    for number in tangerine {
        frequencyDict[number, default: 0] += 1
    }
    let sortedFrequencies = frequencyDict.sorted { $0.value > $1.value }

    for index in sortedFrequencies.indices {
        temp += sortedFrequencies[index].value
        if temp >= k {
            temp = index + 1
            break
        }
    }
    return temp
}
