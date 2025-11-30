import Foundation

while let input = readLine() {
    if input == "*" { break }
    let chars = input.split(separator: " ").map{ String($0).uppercased() }
    let firstC = chars[0].first!
    var isTautogram = true
    
    for i in 1..<chars.count {
        if chars[i].first! != firstC {
            isTautogram = false
            break
        }
    }
    
    isTautogram ? print("Y") : print("N")
}
