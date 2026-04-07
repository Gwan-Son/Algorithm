import Foundation

let n = Int(readLine()!)!

var moves = [Int]()
for _ in 0..<n {
    if let move = Int(readLine()!) {
        moves.append(move)
    }
}

let piano = ["A", "", "B", "C", "", "D", "", "E", "F", "", "G", ""]

let keys = ["A", "B", "C", "D", "E", "F", "G"]

for startKey in keys {
    guard var currentIndex = piano.firstIndex(of: startKey) else { continue }
    
    var isValid = true
    
    for move in moves {
        currentIndex = (currentIndex + move) % 12
        if currentIndex < 0 { currentIndex += 12 }
        
        if piano[currentIndex] == "" {
            isValid = false
            break
        }
    }
    
    if isValid {
        print("\(startKey) \(piano[currentIndex])")
    }
}
