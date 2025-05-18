import Foundation

let n = Int(readLine()!)!

let str = readLine()!

let copy_str = str.replacingOccurrences(of: "pPAp", with: "1")

print(copy_str.filter{ $0 == "1" }.count)