import Foundation

let str1 = readLine()!
let str2 = readLine()!

func divideString(_ string: String) -> [String] {
    let mid = string.firstIndex(of: "*")!
    let midIndex = string.distance(from: string.startIndex, to: mid)

    let prefix = String(string.prefix(midIndex))
    let suffix = String(string.suffix(from: string.index(after: mid)))

    return [prefix, suffix]
}

func whichIsLonger(_ s1: String, _ s2: String) -> (String, String) {
    if s1.count <= s2.count {
        return (s1, s2)  // (short, long)
    } else {
        return (s2, s1)  // (short, long)
    }
}

func solution(_ s1: String, _ s2: String) -> String {
    let (sh, lo) = whichIsLonger(s1, s2)
    let loWithoutStar = lo.replacingOccurrences(of: "*", with: "")
    let sharr = divideString(sh)

    if loWithoutStar.hasPrefix(sharr[0]) && loWithoutStar.hasSuffix(sharr[1]) {
        return loWithoutStar
    }

    var answer = ""
    let s1arr = divideString(s1)
    let s2arr = divideString(s2)

    let (short1, long1) = whichIsLonger(s1arr[0], s2arr[0])
    if !long1.hasPrefix(short1) {
        return "-1"
    }
    answer += long1
    var remain1 = String(long1.dropFirst(short1.count))

    let (short2, long2) = whichIsLonger(s1arr[1], s2arr[1])
    if !long2.hasSuffix(short2) {
        return "-1"
    }

    let remain2 = String(long2.dropLast(short2.count))

    while !remain1.isEmpty {
        if remain2.hasPrefix(remain1) {
            let startIndex = remain2.index(remain2.startIndex, offsetBy: remain1.count)
            return answer + String(remain2[startIndex...]) + short2
        }
        remain1 = String(remain1.dropFirst())
    }

    return answer + long2
}

print(solution(str1, str2))