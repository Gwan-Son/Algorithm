import Foundation

func solve() {
    guard let input = readLine()?.split(separator: " "), input.count == 2 else { return }
    
    let year = input[0]
    let n = Int(input[1])!
    
    var result = ""
    
    if n <= 26 {
        let char = Character(UnicodeScalar(64 + n)!)
        result = String(char)
        
    } else if n <= 702 {
        let currentN = n - 27
        let firstChar = Character(UnicodeScalar(97 + (currentN / 26))!)
        let secondChar = Character(UnicodeScalar(97 + (currentN % 26))!)
        result = "\(firstChar)\(secondChar)"
        
    } else {
        var currentN = n - 703
        var suffix = ""
        
        repeat {
            let char = Character(UnicodeScalar(97 + (currentN % 26))!)
            suffix = String(char) + suffix
            currentN = (currentN / 26) - 1
        } while currentN >= 0
        
        if suffix.count < 3 {
            let padding = String(repeating: "a", count: 3 - suffix.count)
            result = padding + suffix
        } else {
            result = suffix
        }
    }
    
    print("SN \(year)\(result)")
}

solve()