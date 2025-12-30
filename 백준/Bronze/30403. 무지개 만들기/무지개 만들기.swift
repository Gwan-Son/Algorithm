import Foundation

let n = Int(readLine()!)!

let str = readLine()!.map{ String($0) }

let rainbowChar: [String] = ["r", "o", "y", "g", "b", "i", "v"]

var lowerRainbow = [Bool](repeating: false, count: 7)
var upperRainbow = [Bool](repeating: false, count: 7)

for i in 0..<n {
    for j in 0..<7 {
        if str[i] == rainbowChar[j] {
            lowerRainbow[j] = true
        }
        
        if str[i] == rainbowChar[j].uppercased() {
            upperRainbow[j] = true
        }
    }
}

let lowerCount = lowerRainbow.filter{ $0 == true }.count
let upperCount = upperRainbow.filter{ $0 == true }.count

if lowerCount == 7 && upperCount == 7 {
    print("YeS")
} else if lowerCount == 7 {
    print("yes")
} else if upperCount == 7 {
    print("YES")
} else {
    print("NO!")
}
