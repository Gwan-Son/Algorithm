import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return jaccardSimilarity(str1, str2)
}

func makeMultiSet(_ str: String) -> [String] {
    var multiSet: [String] = []
    let lowercased = Array(str.lowercased())
    for i in 0..<(lowercased.count - 1) {
        if lowercased[i].isLetter && lowercased[i+1].isLetter {
            multiSet.append(String(lowercased[i...i+1]))
        }
    }
    return multiSet
}

func jaccardSimilarity(_ str1: String, _ str2: String) -> Int {
    let multiSet1 = makeMultiSet(str1)
    let multiSet2 = makeMultiSet(str2)
    var intersection = 0
    let inter = multiSet1.filter { multiSet2.contains($0) }
    for i in Set(inter) {
        let count1 = multiSet1.filter { $0 == i }.count
        let count2 = multiSet2.filter { $0 == i }.count
        intersection += min(count1, count2)
    }
    let union = multiSet1.count + multiSet2.count - intersection
    if union == 0 {
        return 65536
    } else {
        return Int(Double(intersection) / Double(union) * 65536)
    }
}