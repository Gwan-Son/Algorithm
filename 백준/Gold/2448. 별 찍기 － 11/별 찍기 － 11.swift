import Foundation

let n = Int(readLine()!)!

func generatePattern(_ size: Int) -> [String] {
    if size == 3 {
        return [
            "  *  ",
            " * * ",
            "*****"
        ]
    }

    let half = size / 2
    let smallPattern = generatePattern(half)
    var result = [String]()

    // 위쪽: 작은 패턴 1개 (가운데 정렬)
    for line in smallPattern {
        let spaces = String(repeating: " ", count: half)
        result.append(spaces + line + spaces)
    }

    // 아래쪽: 작은 패턴 2개 (좌우 배치)
    for line in smallPattern {
        result.append(line + " " + line)
    }

    return result
}

let pattern = generatePattern(n)
for line in pattern {
    print(line)
}