import Foundation

func solve() {
    let inputData = FileHandle.standardInput.readDataToEndOfFile()
    guard let inputString = String(data: inputData, encoding: .ascii) else { return }
    
    let tokens = inputString.split(whereSeparator: { $0.isWhitespace })
    if tokens.isEmpty { return }
    
    guard let n = Int(tokens[0]) else { return }
    
    var current: [(sum: Int, elements: [Int])] = []
    current.reserveCapacity(2 * n - 1)
    
    for i in 1..<(2 * n) {
        guard i < tokens.count, let val = Int(tokens[i]) else { break }
        current.append((sum: val, elements: [val]))
    }
    
    var m = n
    while m > 1 {
        var evens = [(sum: Int, elements: [Int])]()
        var odds = [(sum: Int, elements: [Int])]()
        
        for item in current {
            if item.sum % 2 == 0 {
                evens.append(item)
            } else {
                odds.append(item)
            }
        }
        
        var nextLevel = [(sum: Int, elements: [Int])]()

        var i = 0
        while i + 1 < evens.count {
            let a = evens[i]
            let b = evens[i+1]

            nextLevel.append((sum: (a.sum + b.sum) / 2, elements: a.elements + b.elements))
            i += 2
        }
        
        var j = 0
        while j + 1 < odds.count {
            let a = odds[j]
            let b = odds[j+1]
            nextLevel.append((sum: (a.sum + b.sum) / 2, elements: a.elements + b.elements))
            j += 2
        }
        
        current = nextLevel
        m /= 2
    }
    
    if let result = current.first {
        let output = result.elements.map { String($0) }.joined(separator: " ")
        print(output)
    }
}

solve()