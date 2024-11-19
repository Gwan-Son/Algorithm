import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dict: [String: [(Int, Int)]] = [:]
    var sumDict: [String: Int] = [:]
    var result: [Int] = []
    
    for i in 0..<plays.count {
        dict[genres[i], default: []].append((i, plays[i]))
        sumDict[genres[i],default: 0] = sumDict[genres[i],default: 0] + plays[i]
    }
    
    
    sumDict.sorted { $0.value > $1.value }.forEach { key, value in
        var count = 0
        dict[key]!.sorted { $0.1 > $1.1 }.forEach { value1, value2 in
            if count < 2 {
                result.append(value1)
                count += 1
            }
        }
        
    }
    
    return result
}