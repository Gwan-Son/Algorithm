import Foundation

let n = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map{ String($0) }

let hellobit = readLine()!

print(arr.filter{ $0 == hellobit }.count)
