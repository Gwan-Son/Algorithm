import Foundation

let string = readLine()!

var temp = string.replacingOccurrences(of: "XXXX", with: "AAAA")
temp = temp.replacingOccurrences(of: "XX", with: "BB")

if temp.contains("X") {
    print("-1")
} else {
    print(temp)
}