import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var results: [Int] = []

    for target in targets {
        var count = 0
        for t in target {
            var minIdx = Int.max
            for key in keymap {
                if let idx = key.firstIndex(of: t) {
                    minIdx = min(minIdx, idx.utf16Offset(in: key))
                }
            }
            if minIdx == Int.max {
                results.append(-1)
                count = 0
                break
            } else {
                count += minIdx + 1
            }
        }
        if count == 0 { continue }
        results.append(count)
    }

    return results
}