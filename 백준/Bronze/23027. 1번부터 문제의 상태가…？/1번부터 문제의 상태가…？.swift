import Foundation

var str = readLine()!

if str.contains("A") {
    str = str.replacingOccurrences(of: "B", with: "A")
    str = str.replacingOccurrences(of: "C", with: "A")
    str = str.replacingOccurrences(of: "D", with: "A")
    str = str.replacingOccurrences(of: "F", with: "A")
} else if str.contains("B") {
    str = str.replacingOccurrences(of: "C", with: "B")
    str = str.replacingOccurrences(of: "D", with: "B")
    str = str.replacingOccurrences(of: "F", with: "B")
} else if str.contains("C") {
    str = str.replacingOccurrences(of: "D", with: "C")
    str = str.replacingOccurrences(of: "F", with: "C")
} else {
    str = String(repeating: "A", count: str.count)
}

print(str)
