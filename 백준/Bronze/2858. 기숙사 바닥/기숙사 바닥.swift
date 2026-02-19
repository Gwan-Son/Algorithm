import Foundation

if let line = readLine() {
    let parts = line.split(separator: " ").compactMap { Int($0) }
    if parts.count == 2 {
        let R = parts[0]
        let B = parts[1]
        let total = R + B
        var answerW = 0
        var answerH = 0

        var h = 1
        while h * h <= total {
            if total % h == 0 {
                let w = total / h
                
                let W = max(w, h)
                let H = min(w, h)
                
                if (W - 2) * (H - 2) == B {
                    answerW = W
                    answerH = H
                    break
                }
            }
            h += 1
        }

        if answerW != 0 && answerH != 0 {
            print("\(answerW) \(answerH)")
        }
    }
}
