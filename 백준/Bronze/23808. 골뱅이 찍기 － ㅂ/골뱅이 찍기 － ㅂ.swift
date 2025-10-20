import Foundation

let n = Int(readLine()!)!

var result = ""

for _ in 0..<n * 2 {
    result += String(repeating: "@", count: n)
    result += String(repeating: "   ", count: n)
    result += String(repeating: "@", count: n)
    result += "\n"
}

for _ in 0..<n {
    result += String(repeating: "@", count: n)
    result += String(repeating: "@@@", count: n)
    result += String(repeating: "@", count: n)
    result += "\n"
}

for _ in 0..<n {
    result += String(repeating: "@", count: n)
    result += String(repeating: "   ", count: n)
    result += String(repeating: "@", count: n)
    result += "\n"
}

for _ in 0..<n {
    result += String(repeating: "@", count: n)
    result += String(repeating: "@@@", count: n)
    result += String(repeating: "@", count: n)
    result += "\n"
}

print(result)
