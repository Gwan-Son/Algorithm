import Foundation

var str = readLine()!

str = str.replacingOccurrences(of: "pi", with: "_")
str = str.replacingOccurrences(of: "ka", with: "_")
str = str.replacingOccurrences(of: "chu", with: "_")

str = str.replacingOccurrences(of: "_", with: "")

print(str.isEmpty ? "YES" : "NO")
